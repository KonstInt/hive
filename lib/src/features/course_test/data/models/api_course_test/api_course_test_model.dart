import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/features/course_test/data/models/api_meta/api_course_test_meta.dart';

part 'api_course_test_model.freezed.dart';
part 'api_course_test_model.g.dart';

@freezed
abstract class ApiCourseTestModel with _$ApiCourseTestModel {
   @JsonSerializable(explicitToJson: true)
   factory ApiCourseTestModel({required String testName,
      required String testDescription,
      required List<String> taskListIds,
      required double maxScores,
      ApiCourseTestMeta? meta}) = _ApiCourseTestModel;
   factory ApiCourseTestModel.fromJson(Map<String, dynamic> json) => _$ApiCourseTestModelFromJson(json);
}
