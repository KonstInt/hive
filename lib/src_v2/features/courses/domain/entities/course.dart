import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String id,
    required String title,
    required List<String> tags,
    required String shortDescription,
    required int maxPoints,
    required List<String> testIds,
  }) = _Course;
}
