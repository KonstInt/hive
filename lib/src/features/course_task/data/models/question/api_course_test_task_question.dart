import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_course_test_task_question.freezed.dart';
part 'api_course_test_task_question.g.dart';

@freezed
abstract class ApiCourseTestTaskQuestion with _$ApiCourseTestTaskQuestion {
  factory ApiCourseTestTaskQuestion.fromText(
      {required String question,
      String? imageUrl}) = _ApiCourseTestTaskQuestionFromText;
  factory ApiCourseTestTaskQuestion.fromHTML({required String htmlCode}) =
      _ApiCourseTestTaskQuestionFromHTML;
  factory ApiCourseTestTaskQuestion.fromImage({required String imageUrl}) =
      _ApiCourseTestTaskQuestionFromImage;
  factory ApiCourseTestTaskQuestion.fromJson(Map<String, dynamic> json) =>
      _$ApiCourseTestTaskQuestionFromJson(json);
}
