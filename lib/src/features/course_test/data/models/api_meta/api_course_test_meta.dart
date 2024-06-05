import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_course_test_meta.freezed.dart';
part 'api_course_test_meta.g.dart';

@freezed
abstract class ApiCourseTestMeta with _$ApiCourseTestMeta {
   factory ApiCourseTestMeta({required Map<String, String> metaAnswers,required bool inProgress, required double currentScores}) = _ApiCourseTestMeta;
   factory ApiCourseTestMeta.fromJson(Map<String, dynamic> json) => _$ApiCourseTestMetaFromJson(json);
}