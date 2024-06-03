import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_test_task_question.freezed.dart';

@freezed
abstract class CourseTestTaskQuestion with _$CourseTestTaskQuestion {
  factory CourseTestTaskQuestion.fromText(
      {required String question,
      String? imageUrl}) = _CourseTestTaskQuestionFromText;
  factory CourseTestTaskQuestion.fromHTML({required String htmlCode}) =
      _CourseTestTaskQuestionFromHTML;
  factory CourseTestTaskQuestion.fromImage({required String imageUrl}) =
      _CourseTestTaskQuestionFromImage;
}
