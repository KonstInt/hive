import 'package:hive/src/features/course_test/data/mappers/course_test_mapper.dart';
import 'package:hive/src/features/course_test/data/service/api_course_test_service.dart';
import 'package:hive/src/features/course_test/domain/models/course_test/course_test_model.dart';
import 'package:hive/src/features/course_test/domain/models/meta/course_test_meta.dart';
import 'package:injectable/injectable.dart';

@singleton
class CourseTestUtil {
  final ApiCourseTestService _service;
  final CourseTestMapper _mapper;
  CourseTestUtil(this._mapper, this._service);

  Future<CourseTestModel> getCourseTestWithMeta(
      {required String testId, required String metaTestId}) async {
    return _mapper.fromApi(await _service.getCourseTestWithMeta(
        testId: testId, metaTestId: metaTestId));
  }

  Future<CourseTestModel> getCourseTestWithoutMeta(
      {required String testId}) async {
    return _mapper
        .fromApi(await _service.getCourseTestWithoutMeta(testId: testId));
  }

  Future<String> createMeta(CourseTestMeta meta) async {
    return _service.createMeta(_mapper.metaToApi(meta));
  }

  Future<void> updateMeta(
      {required String metaTestId, required CourseTestMeta meta}) async {
    return _service.updateMeta(
      metaTestId: metaTestId,
      meta: _mapper.metaToApi(meta),
    );
  }
}
