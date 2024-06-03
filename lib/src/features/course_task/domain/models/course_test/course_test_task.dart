import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/features/course_task/domain/models/meta/course_test_task_meta.dart';
import 'package:hive/src/features/course_task/domain/models/question/course_test_task_question.dart';
import 'package:hive/src/features/course_task/domain/models/answer/course_test_task_answer.dart';

part 'course_test_task.freezed.dart';

@freezed
abstract class CourseTestTask with _$CourseTestTask {
  factory CourseTestTask.quizTyped(
      {required String id,
      required CourseTestTaskQuestion question,
      required List<CourseTestTaskAnswer> answers,
      required CourseTestTaskAnswer rightAnswer,
      CourseTestTaskMeta? meta}) = _CourseTestTaskQuizTyped;
  factory CourseTestTask.multiChoiceQuizTyped(
          {required String id,
          required CourseTestTaskQuestion question,
          required List<CourseTestTaskAnswer> answers,
          required List<CourseTestTaskAnswer> rightAnswers,
          CourseTestTaskMeta? meta}) =
      _CourseTestTaskMultiChoiceQuizTyped;
  factory CourseTestTask.digitalInk(
      {required String id,
      required CourseTestTaskQuestion question,
      required String rightAnswer,
      required String languageCode, 
      CourseTestTaskMeta? meta}) = _CourseTestTaskDigitalInk;
}
