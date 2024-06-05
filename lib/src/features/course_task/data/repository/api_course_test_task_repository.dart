import 'package:hive/src/features/course_task/data/util/course_test_task_util.dart';
import 'package:hive/src/features/course_task/domain/models/course_test_task/course_test_task.dart';
import 'package:hive/src/features/course_task/domain/models/meta/course_test_task_meta.dart';
import 'package:hive/src/features/course_task/domain/repository/course_test_task_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CourseTestTaskRepository)
class ApiCourseTestTaskRepository extends CourseTestTaskRepository {
  final CourseTestTaskUtil util;
  ApiCourseTestTaskRepository({required this.util});
  @override
  Future<CourseTestTask> getCourseTestTask({required String taskId}) {
    return util.getCourseTestTask(taskId: taskId);
  }

  @override
  Future<CourseTestTask> getCourseTestTaskWithMeta(
      {required String taskId, required String metaCourseTaskId}) {
    return util.getCourseTestTaskWithMeta(
        taskId: taskId, metaCourseTaskId: metaCourseTaskId);
  }

  @override
  Future<String> setCourseTaskProgress({required CourseTestTaskMeta answer}) {
    return util.setCourseTaskProgress(answer: answer);
  }
}
