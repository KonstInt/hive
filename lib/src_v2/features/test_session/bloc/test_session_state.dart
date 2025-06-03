part of 'test_session_bloc.dart';

sealed class TestSessionState extends Equatable {
  const TestSessionState();

  @override
  List<Object?> get props => [];
}

final class TestSessionInitial extends TestSessionState {
  const TestSessionInitial();
}

final class TestSessionLoading extends TestSessionState {
  const TestSessionLoading();
}

final class TestSessionError extends TestSessionState {
  final String message;

  const TestSessionError(this.message);

  @override
  List<Object?> get props => [message];
}

final class TestSessionLoaded extends TestSessionState {
  final task_model.TaskModel currentTask;
  final double progress;
  final int currentTaskIndex;
  final int totalTasks;
  final bool isAnswered;
  final bool isCorrect;
  final answer_model.AnswerModel? userAnswer;

  const TestSessionLoaded({
    required this.currentTask,
    required this.progress,
    required this.currentTaskIndex,
    required this.totalTasks,
    this.isAnswered = false,
    this.isCorrect = false,
    this.userAnswer,
  });

  @override
  List<Object?> get props => [
        currentTask,
        progress,
        currentTaskIndex,
        totalTasks,
        isAnswered,
        isCorrect,
        userAnswer,
      ];
}

final class TestSessionCompleted extends TestSessionState {
  final int totalTasks;
  final int completedTasks;
  final int correctAnswers;
  final double score;

  const TestSessionCompleted({
    required this.totalTasks,
    required this.completedTasks,
    required this.correctAnswers,
    required this.score,
  });

  @override
  List<Object?> get props =>
      [totalTasks, completedTasks, correctAnswers, score];
}
