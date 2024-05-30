import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/features/course_test/domain/models/question/course_test_task_question.dart';
import 'package:hive/src/features/course_test/domain/models/task/course_test_task_answer.dart';

part 'course_test_task.freezed.dart';

@freezed
abstract class CourseTestTask with _$CourseTestTask {
  factory CourseTestTask.quizTyped({required CourseTestTaskQuestion question, required List<CourseTestTaskAnswer> answers, required CourseTestTaskAnswer rightAnswer}) =
      _CourseTestTaskQuizTyped;
  factory CourseTestTask.multiChoiceQuizTyped({required CourseTestTaskQuestion question, required List<CourseTestTaskAnswer> answers, required List<CourseTestTaskAnswer> rightAnswers}) =
      _CourseTestTaskMultiChoiceQuizTyped;
  factory CourseTestTask.digitalInk({required CourseTestTaskQuestion question, required String rightAnswer, required String languageCode}) =
      _CourseTestTaskDigitalInk;
}
