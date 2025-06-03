import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_course_model.freezed.dart';
part 'full_course_model.g.dart';

@freezed
abstract class FullCourseModel with _$FullCourseModel {
  const factory FullCourseModel({
    required String id,
    required String title,
    required List<String> tags,
    required String fullDescription,
    String? imageUrl,
    required int maxPoints,
    required int currentPoints,
    required double progressPercentage,
  }) = _FullCourseModel;

  factory FullCourseModel.fromJson(Map<String, dynamic> json) =>
      _$FullCourseModelFromJson(json);
}
