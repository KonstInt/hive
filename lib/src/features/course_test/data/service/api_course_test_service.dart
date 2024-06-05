import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/src/features/course_test/data/models/api_course_test/api_course_test_model.dart';
import 'package:hive/src/features/course_test/data/models/api_meta/api_course_test_meta.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiCourseTestService {
  Future<ApiCourseTestModel> getCourseTestWithMeta(
      {required String testId, required String metaTestId}) async {
    final snapshot =
        await FirebaseFirestore.instance.collection('tasks').doc(testId).get();
    var task = ApiCourseTestModel.fromJson(snapshot.data()!);
    final snapshotMeta = await FirebaseFirestore.instance
        .collection('testsMeta')
        .doc(metaTestId)
        .get();
    return task.copyWith(
        meta: ApiCourseTestMeta.fromJson(snapshotMeta.data()!));
  }

  Future<ApiCourseTestModel> getCourseTestWithoutMeta(
      {required String testId}) async {
    final snapshot =
        await FirebaseFirestore.instance.collection('tasks').doc(testId).get();
    return ApiCourseTestModel.fromJson(snapshot.data()!);
  }

  Future<String> createMeta(ApiCourseTestMeta meta) async {
    final snapshotMeta =
        FirebaseFirestore.instance.collection('testsMeta').doc();
    final id = snapshotMeta.id;
    await snapshotMeta.set(meta.toJson());
    return id;
  }

  Future<void> updateMeta(
      {required String metaTestId, required ApiCourseTestMeta meta}) async {
    await FirebaseFirestore.instance
        .collection('testsMeta')
        .doc(metaTestId)
        .set(meta.toJson());
  }
}
