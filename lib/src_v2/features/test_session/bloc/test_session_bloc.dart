import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/src_v2/features/auth/domain/interactor/auth_interactor.dart';
import '../models/task_model.dart' as task_model;
import '../models/answer_model.dart' as answer_model;
import '../repositories/test_session_repository.dart';

part 'test_session_event.dart';
part 'test_session_state.dart';

class TestSessionBloc extends Bloc<TestSessionEvent, TestSessionState> {
  final String courseId;
  final String testId;
  final AuthInteractor authInteractor;
  final TestSessionRepository _repository;
  late final List<task_model.TaskModel> _tasks;
  int _currentTaskIndex = 0;
  answer_model.AnswerModel? _currentAnswer;

  TestSessionBloc({
    required this.courseId,
    required this.testId,
    required this.authInteractor,
    required TestSessionRepository repository,
  })  : _repository = repository,
        super(const TestSessionInitial()) {
    on<TestSessionStarted>(_onStarted);
    on<TestSessionAnswerChanged>(_onAnswerChanged);
    on<TestSessionAnswerSubmitted>(_onAnswerSubmitted);
    on<TestSessionNextTask>(_onNextTask);
  }

  Future<void> _onStarted(
    TestSessionStarted event,
    Emitter<TestSessionState> emit,
  ) async {
    emit(const TestSessionLoading());
    try {
      _tasks = await _repository.getTasks(courseId, testId);

      final progress = await _repository.getUserProgress(
        courseId,
        testId,
        authInteractor.getCurrentUuid(),
      );
      if (progress != null) {
        _currentTaskIndex = progress['task_completed'] as int? ?? 0;
      }

      if (_tasks.isEmpty) {
        throw Exception('No tasks found');
      }

      // Mark test as in progress
      await _repository.updateTestState(
        courseId,
        testId,
        authInteractor.getCurrentUuid(),
        _currentTaskIndex != _tasks.length - 1 ? 'in_progress' : 'completed',
      );

      emit(TestSessionLoaded(
        currentTask: _tasks[_currentTaskIndex],
        progress: _currentTaskIndex / _tasks.length,
        currentTaskIndex: _currentTaskIndex,
        totalTasks: _tasks.length,
      ));
    } catch (e) {
      emit(TestSessionError(e.toString()));
    }
  }

  bool _validateAnswer(
      task_model.TaskModel taskModel, answer_model.AnswerModel answerModel) {
    try {
      return switch ((answerModel, taskModel.rightAnswer)) {
        (
          answer_model.SingleChoiceAnswer userAnswer,
          task_model.SingleChoiceAnswer correctAnswer
        ) =>
          userAnswer.answer == correctAnswer.answer,
        (
          answer_model.MultipleChoiceAnswer userAnswer,
          task_model.MultipleChoiceAnswer correctAnswer
        ) =>
          _validateMultipleChoice(userAnswer.answers, correctAnswer.answers),
        (
          answer_model.TextInputAnswer userAnswer,
          task_model.InputTextAnswer correctAnswer
        ) =>
          userAnswer.text.toLowerCase().trim() ==
              correctAnswer.answer.toLowerCase().trim(),
        (
          answer_model.DigitalInkAnswer userAnswer,
          task_model.DigitalInkAnswer correctAnswer
        ) =>
          _validateDigitalInk(userAnswer.recognizedText, correctAnswer.inkData),
        _ => false,
      };
    } catch (e) {
      return false;
    }
  }

  bool _validateMultipleChoice(
      List<String> answers, List<String> correctAnswers) {
    if (answers.isEmpty || correctAnswers.isEmpty) return false;
    return answers.length == correctAnswers.length &&
        answers.every((item) => correctAnswers.contains(item));
  }

  bool _validateDigitalInk(String userSymbol, String correctInkData) {
    return userSymbol == correctInkData;
  }

  void _onAnswerChanged(
    TestSessionAnswerChanged event,
    Emitter<TestSessionState> emit,
  ) {
    _currentAnswer = event.answer;
  }

  Future<void> _onAnswerSubmitted(
    TestSessionAnswerSubmitted event,
    Emitter<TestSessionState> emit,
  ) async {
    if (_tasks == null) {
      emit(const TestSessionError('No tasks loaded'));
      return;
    }

    if (_currentAnswer == null) {
      return;
    }

    try {
      final currentTask = _tasks[_currentTaskIndex];
      final isCorrect = _validateAnswer(currentTask, _currentAnswer!);

      // Save answer
      await _repository.saveAnswer(
        courseId,
        testId,
        currentTask.id,
        authInteractor.getCurrentUuid(),
        {
          'answer': _answerToJson(_currentAnswer!),
          'isCorrect': isCorrect,
        },
      );

      // Show answer validation
      emit(TestSessionLoaded(
        currentTask: currentTask,
        progress: _currentTaskIndex / _tasks.length,
        currentTaskIndex: _currentTaskIndex,
        totalTasks: _tasks.length,
        isAnswered: true,
        isCorrect: isCorrect,
        userAnswer: _currentAnswer,
      ));
      _currentAnswer = null; // Reset current answer after submission
    } catch (e) {
      emit(TestSessionError(e.toString()));
    }
  }

  Future<void> _onNextTask(
    TestSessionNextTask event,
    Emitter<TestSessionState> emit,
  ) async {
    try {
      _currentTaskIndex++;
      // Update progress
      final tmpAnswers = await _repository.getAnswers(
        courseId,
        testId,
        authInteractor.getCurrentUuid(),
      );
      final tmpTotalComplete =
          tmpAnswers.where((a) => a['isCorrect'] == true).length;

      await _repository.updateProgress(
        courseId,
        testId,
        tmpTotalComplete,
        authInteractor.getCurrentUuid(),
        _tasks.length,
      );

      if (_currentTaskIndex < _tasks.length) {
        emit(TestSessionLoaded(
          currentTask: _tasks[_currentTaskIndex],
          progress: _currentTaskIndex / _tasks.length,
          currentTaskIndex: _currentTaskIndex,
          totalTasks: _tasks.length,
        ));
      } else {
        // Calculate final score
        final answers = await _repository.getAnswers(
          courseId,
          testId,
          authInteractor.getCurrentUuid(),
        );
        final correctAnswers =
            answers.where((a) => a['isCorrect'] == true).length;
        final score = (correctAnswers / _tasks.length) * 100;

        // Update course progress
        await _repository.updateCourseProgress(
          courseId,
          authInteractor.getCurrentUuid(),
          correctAnswers,
        );

        // Mark test as completed
        await _repository.updateTestState(
          courseId,
          testId,
          authInteractor.getCurrentUuid(),
          'completed',
        );

        emit(TestSessionCompleted(
          totalTasks: _tasks.length,
          completedTasks: _tasks.length,
          correctAnswers: correctAnswers,
          score: score,
        ));
      }
    } catch (e) {
      emit(TestSessionError(e.toString()));
    }
  }

  Map<String, dynamic> _answerToJson(answer_model.AnswerModel answerModel) {
    return switch (answerModel) {
      answer_model.SingleChoiceAnswer userAnswer => {
          'type': 'single_choice',
          'answer': userAnswer.answer,
        },
      answer_model.MultipleChoiceAnswer userAnswer => {
          'type': 'multiple_choice',
          'answers': userAnswer.answers,
        },
      answer_model.TextInputAnswer userAnswer => {
          'type': 'text_input',
          'text': userAnswer.text,
        },
      answer_model.DigitalInkAnswer userAnswer => {
          'type': 'digital_ink',
          'strokes': userAnswer.strokes,
        },
    };
  }
}
