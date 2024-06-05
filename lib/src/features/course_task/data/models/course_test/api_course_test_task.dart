import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/features/course_task/data/models/answer/api_course_test_task_answer.dart';
import 'package:hive/src/features/course_task/data/models/meta/api_course_test_task_meta.dart';
import 'package:hive/src/features/course_task/data/models/question/api_course_test_task_question.dart';

part 'api_course_test_task.freezed.dart';
part 'api_course_test_task.g.dart';

@freezed
abstract class ApiCourseTestTask with _$ApiCourseTestTask {
  @JsonSerializable(explicitToJson: true)
  factory ApiCourseTestTask.quizTyped(
      {required String id,
      required double scores,
      required ApiCourseTestTaskQuestion question,
      required List<ApiCourseTestTaskAnswer> answers,
      required ApiCourseTestTaskAnswer rightAnswer,
      ApiCourseTestTaskMeta? meta}) = _ApiCourseTestTaskQuizTyped;
  @JsonSerializable(explicitToJson: true)
  factory ApiCourseTestTask.multiChoiceQuizTyped(
      {required String id,
      required double scores,
      required ApiCourseTestTaskQuestion question,
      required List<ApiCourseTestTaskAnswer> answers,
      required List<ApiCourseTestTaskAnswer> rightAnswers,
      ApiCourseTestTaskMeta? meta}) = _ApiCourseTestTaskMultiChoiceQuizTyped;
  @JsonSerializable(explicitToJson: true)
  factory ApiCourseTestTask.digitalInk(
      {required String id,
      required double scores,
      required ApiCourseTestTaskQuestion question,
      required String rightAnswer,
      required String languageCode,
      ApiCourseTestTaskMeta? meta}) = _ApiCourseTestTaskDigitalInk;

  factory ApiCourseTestTask.fromJson(Map<String, dynamic> json) =>
      _$ApiCourseTestTaskFromJson(json);
}
