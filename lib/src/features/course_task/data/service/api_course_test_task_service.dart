import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/src/features/course_task/data/models/course_test/api_course_test_task.dart';
import 'package:hive/src/features/course_task/data/models/meta/api_course_test_task_meta.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiCourseTestTaskService {
  Future<ApiCourseTestTask> getCourseTestTask({required String taskId}) async {
    final snapshot =
        await FirebaseFirestore.instance.collection('tasks').doc(taskId).get();
    final task = ApiCourseTestTask.fromJson(snapshot.data()!);
    return task;
  }

  Future<ApiCourseTestTask> getCourseTestTaskWithMeta(
      {required String taskId, required String metaCourseTaskId}) async {
    final snapshot =
        await FirebaseFirestore.instance.collection('tasks').doc(taskId).get();
    var task = ApiCourseTestTask.fromJson(snapshot.data()!);
    final snapshotMeta = await FirebaseFirestore.instance
        .collection('tasksMeta')
        .doc(metaCourseTaskId)
        .get();
    return task.copyWith(
        meta: ApiCourseTestTaskMeta.fromJson(snapshotMeta['answer']));
  }

  Future<String> setCourseTaskProgress(
      {required ApiCourseTestTaskMeta answer}) async {
    final snapshotMeta =
        FirebaseFirestore.instance.collection('tasksMeta').doc();
    final id = snapshotMeta.id;
    await snapshotMeta.set(answer.toJson());
    return id;
  }
}
