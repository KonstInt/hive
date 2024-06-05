import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_test_meta.freezed.dart';

@freezed
abstract class CourseTestMeta with _$CourseTestMeta {
   factory CourseTestMeta({required Map<String, String> metaAnswers,required bool inProgress, required double currentScores}) = _CourseTestMeta;
}