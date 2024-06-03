import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_digital_ink_recognition/google_mlkit_digital_ink_recognition.dart';
import 'package:hive/src/features/course_task/data/models/answer/api_course_test_task_answer.dart';


part 'api_course_test_task_meta.freezed.dart';
part 'api_course_test_task_meta.g.dart';

@freezed
abstract class ApiCourseTestTaskMeta with _$ApiCourseTestTaskMeta {
   factory ApiCourseTestTaskMeta.digitalInk({required String ink, required String recognition}) = _ApiCourseTestTaskMetaDigitalInk;
   factory ApiCourseTestTaskMeta.quiz({required ApiCourseTestTaskAnswer answer}) = _ApiCourseTestTaskMetaQuiz;
   factory ApiCourseTestTaskMeta.quizMultipleChoice({required List<ApiCourseTestTaskAnswer> answer}) = _ApiCourseTestTaskMetaQuizMultipleChoice;
   factory ApiCourseTestTaskMeta.fromJson(Map<String, dynamic> json) => _$ApiCourseTestTaskMetaFromJson(json);
}
