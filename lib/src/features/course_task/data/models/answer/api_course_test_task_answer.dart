import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_course_test_task_answer.freezed.dart';
part 'api_course_test_task_answer.g.dart';
@freezed
abstract class ApiCourseTestTaskAnswer with _$ApiCourseTestTaskAnswer {
  factory ApiCourseTestTaskAnswer.fromText(
      {required String text, String? imageUrl}) = _ApiCourseTestTaskAnswerFromText;
  factory ApiCourseTestTaskAnswer.fromHTML({required String htmlCode}) =
      _ApiCourseTestTaskAnswerFromHTML;
  factory ApiCourseTestTaskAnswer.fromImage({required String imageUrl}) =
      _ApiCourseTestTaskAnswerFromImage;

   factory ApiCourseTestTaskAnswer.fromJson(Map<String, dynamic> json) => _$ApiCourseTestTaskAnswerFromJson(json);
}

