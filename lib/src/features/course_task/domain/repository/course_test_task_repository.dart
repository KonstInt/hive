import 'package:hive/src/features/course_task/domain/models/course_test_task/course_test_task.dart';
import 'package:hive/src/features/course_task/domain/models/meta/course_test_task_meta.dart';

abstract class CourseTestTaskRepository {
  Future<CourseTestTask> getCourseTestTask({required String taskId});

  Future<CourseTestTask> getCourseTestTaskWithMeta(
      {required String taskId, required String metaCourseTaskId});

  Future<String> setCourseTaskProgress({required CourseTestTaskMeta answer});
}
