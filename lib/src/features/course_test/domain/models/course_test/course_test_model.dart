import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/features/course_test/domain/models/meta/course_test_meta.dart';

part 'course_test_model.freezed.dart';

@freezed
abstract class CourseTestModel with _$CourseTestModel {
  factory CourseTestModel(
      {required String testName,
      required String testDescription,
      required List<String> taskListIds,
      required double maxScores,
      CourseTestMeta? meta}) = _CourseTestModel;
}
