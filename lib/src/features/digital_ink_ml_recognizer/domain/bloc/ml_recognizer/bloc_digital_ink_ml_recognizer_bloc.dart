import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:hive/src/features/course_task/data/models/answer/api_course_test_task_answer.dart';
import 'package:hive/src/features/course_task/data/models/course_test/api_course_test_task.dart';
import 'package:hive/src/features/course_task/data/models/question/api_course_test_task_question.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/data/repository/digital_ink_ml_recognizer_repository.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/domain/models/enums/languages_digital_ink_enum.dart';
import 'package:hive/src/features/digital_ink_ml_recognizer/domain/models/send/send_digital_ink_model.dart';
import 'package:injectable/injectable.dart';

part 'bloc_digital_ink_ml_recognizer_event.dart';
part 'bloc_digital_ink_ml_recognizer_state.dart';
part 'bloc_digital_ink_ml_recognizer_bloc.freezed.dart';

@injectable
class BlocDigitalInkMlRecognizerBloc extends Bloc<
    BlocDigitalInkMlRecognizerEvent, BlocDigitalInkMlRecognizerState> {
  DigitalInkMlRecognizerRepository repository;
  BlocDigitalInkMlRecognizerBloc({required this.repository})
      : super(const _Initial()) {
    on<BlocDigitalInkMlRecognizerEvent>((event, emit) async {
      await event.map(recognize: (event) async => await recognize(event, emit));
    });
  }

  recognize(
      _Recognize event, Emitter<BlocDigitalInkMlRecognizerState> emit) async {
    emit(const BlocDigitalInkMlRecognizerState.loading());
    try {
    //  final question = ApiCourseTestTask.quizTyped(
    //       id: '123',
    //       scores: 3,
    //       question: ApiCourseTestTaskQuestion.fromText(question: 'question'),
    //       answers: [
    //         ApiCourseTestTaskAnswer.fromText(text: '1'),
    //         ApiCourseTestTaskAnswer.fromText(text: '2'),
    //         ApiCourseTestTaskAnswer.fromText(text: '3')
    //       ],
    //       rightAnswer: ApiCourseTestTaskAnswer.fromText(text: '1'));
    //   final snapshotMeta =
    //       FirebaseFirestore.instance.collection('tasks').doc('123');
    //   final id = snapshotMeta.id;
    //   final json = question.toJson();
    //   await snapshotMeta.set(json);
      final result = await repository.recognizeText(
          SendDigitalInkModel(data: event.data, language: event.language));
      result.sort((first, second) => first.score.compareTo(second.score));
      final List<String> predictions = result.map((e) => e.word).toList();
      emit(BlocDigitalInkMlRecognizerState.loaded(results: predictions));
    } catch (e) {
      emit(BlocDigitalInkMlRecognizerState.error(errorStr: e.toString()));
    }
  }
}
