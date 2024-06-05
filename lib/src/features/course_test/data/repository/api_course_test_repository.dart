import 'package:hive/src/features/course_test/data/util/course_test_util.dart';
import 'package:hive/src/features/course_test/domain/models/course_test/course_test_model.dart';
import 'package:hive/src/features/course_test/domain/models/meta/course_test_meta.dart';
import 'package:hive/src/features/course_test/domain/repository/course_test_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CourseTestRepository)
class ApiCourseTestRepository extends CourseTestRepository {
  final CourseTestUtil _util;
  ApiCourseTestRepository(this._util);

  @override
  Future<String> createMeta({required CourseTestMeta meta}) {
    return _util.createMeta(meta);
  }

  @override
  Future<CourseTestModel> getCourseTestWithMeta(
      {required String testId, required String metaTestId}) {
    return _util.getCourseTestWithMeta(testId: testId, metaTestId: metaTestId);
  }

  @override
  Future<CourseTestModel> getCourseTestWithoutMeta({required String testId}) {
    return _util.getCourseTestWithoutMeta(testId: testId);
  }

  @override
  Future<void> updateMeta(
      {required String metaTestId, required CourseTestMeta meta}) {
    return _util.updateMeta(metaTestId: metaTestId, meta: meta);
  }
}
