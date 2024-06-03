import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:hive/src/features/course_task/domain/models/answer/course_test_task_answer.dart';

part 'course_test_task_meta.freezed.dart';

@freezed
abstract class CourseTestTaskMeta with _$CourseTestTaskMeta {
   factory CourseTestTaskMeta.digitalInk({required Ink ink, required String recognition}) = _CourseTestTaskMetaDigitalInk;
   factory CourseTestTaskMeta.quiz({required CourseTestTaskAnswer answer}) = _CourseTestTaskMetaQuiz;
   factory CourseTestTaskMeta.quizMultipleChoice({required List<CourseTestTaskAnswer> answer}) = _CourseTestTaskMetaQuizMultipleChoice;
}