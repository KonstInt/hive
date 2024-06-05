import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_info_update.freezed.dart';

@freezed
abstract class CourseInfoUpdate with _$CourseInfoUpdate {
  factory CourseInfoUpdate({
    required String testId,
    required String testMetaId,
    required double scores,
  }) = _CourseInfoUpdate;
}
