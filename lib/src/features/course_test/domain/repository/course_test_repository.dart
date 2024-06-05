import 'package:hive/src/features/course_test/domain/models/course_test/course_test_model.dart';
import 'package:hive/src/features/course_test/domain/models/meta/course_test_meta.dart';

abstract class CourseTestRepository {
  Future<CourseTestModel> getCourseTestWithMeta(
      {required String testId, required String metaTestId});
  Future<CourseTestModel> getCourseTestWithoutMeta({required String testId});
  Future<String> createMeta({required CourseTestMeta meta});
  Future<void> updateMeta({required String metaTestId,required CourseTestMeta meta });
}
