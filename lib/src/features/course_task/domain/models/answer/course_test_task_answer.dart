import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_test_task_answer.freezed.dart';

@freezed
abstract class CourseTestTaskAnswer with _$CourseTestTaskAnswer {
  factory CourseTestTaskAnswer.fromText(
      {required String text, String? imageUrl}) = _CourseTestTaskAnswerFromText;
  factory CourseTestTaskAnswer.fromHTML({required String htmlCode}) =
      _CourseTestTaskAnswerFromHTML;
  factory CourseTestTaskAnswer.fromImage({required String imageUrl}) =
      _CourseTestTaskAnswerFromImage;
}
