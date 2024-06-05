import 'package:hive/src/features/course_task/data/mappers/course_test_task_mapper.dart';
import 'package:hive/src/features/course_task/data/service/api_course_test_task_service.dart';
import 'package:hive/src/features/course_task/domain/models/course_test_task/course_test_task.dart';
import 'package:hive/src/features/course_task/domain/models/meta/course_test_task_meta.dart';
import 'package:injectable/injectable.dart';

@singleton
class CourseTestTaskUtil {
  final ApiCourseTestTaskService service;
  final CourseTestTaskMapper mapper;

  CourseTestTaskUtil({required this.mapper, required this.service});
  Future<CourseTestTask> getCourseTestTask({required String taskId}) async {
    return mapper.taskFromApi(
      model: await service.getCourseTestTask(taskId: taskId),
    );
  }

  Future<CourseTestTask> getCourseTestTaskWithMeta(
      {required String taskId, required String metaCourseTaskId}) async {
    return mapper.taskFromApi(
      model: await service.getCourseTestTaskWithMeta(
          taskId: taskId, metaCourseTaskId: metaCourseTaskId),
    );
  }

  Future<String> setCourseTaskProgress(
      {required CourseTestTaskMeta answer}) async {
    return await service.setCourseTaskProgress(
      answer: mapper.metaToApi(answer),
    );
  }
}
