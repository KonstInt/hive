import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_info_element.freezed.dart';

@freezed
abstract class CourseInfoElement with _$CourseInfoElement {
  factory CourseInfoElement(
      {required String courseID,
      required String courseMetaInfoId}) = _CourseInfoElement;
}
