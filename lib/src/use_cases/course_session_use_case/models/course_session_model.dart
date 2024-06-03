import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_session_model.freezed.dart';

@freezed
abstract class CourseSessionModel with _$CourseSessionModel {
  factory CourseSessionModel(
      {required String? courseId,
      required String? testId,
      required String? taskId}) = _CourseSessionModel;
}
