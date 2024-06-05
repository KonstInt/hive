import 'package:hive/src/features/course_test/data/models/api_course_test/api_course_test_model.dart';
import 'package:hive/src/features/course_test/data/models/api_meta/api_course_test_meta.dart';
import 'package:hive/src/features/course_test/domain/models/course_test/course_test_model.dart';
import 'package:hive/src/features/course_test/domain/models/meta/course_test_meta.dart';
import 'package:injectable/injectable.dart';

@singleton
class CourseTestMapper {
  CourseTestModel fromApi(ApiCourseTestModel model) {
    return CourseTestModel(
        testName: model.testName,
        testDescription: model.testDescription,
        taskListIds: model.taskListIds,
        maxScores: model.maxScores,
        meta: model.meta != null ? metaFromApi(model.meta!) : null);
  }

  CourseTestMeta metaFromApi(ApiCourseTestMeta meta) {
    return CourseTestMeta(
        metaAnswers: meta.metaAnswers,
        inProgress: meta.inProgress,
        currentScores: meta.currentScores);
  }

  ApiCourseTestModel toApi(CourseTestModel model) {
    return ApiCourseTestModel(
        testName: model.testName,
        testDescription: model.testDescription,
        taskListIds: model.taskListIds,
        maxScores: model.maxScores,
        meta: model.meta != null ? metaToApi(model.meta!) : null);
  }

  ApiCourseTestMeta metaToApi(CourseTestMeta meta) {
    return ApiCourseTestMeta(
        metaAnswers: meta.metaAnswers,
        inProgress: meta.inProgress,
        currentScores: meta.currentScores);
  }
}
