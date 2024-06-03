import 'package:hive/src/features/course_task/domain/models/answer/course_test_task_answer.dart';
import 'package:hive/src/features/course_task/domain/models/course_test/course_test_task.dart';
import 'package:hive/src/features/course_task/domain/models/meta/course_test_task_meta.dart';

abstract class CourseTestRepository {
  Future<CourseTestTask> getCourseTestTask({required String taskId});
  Future<void> setCourseTaskProgress(
      {required String metaCourseTestId,
      required CourseTestTaskMeta answer});
}
