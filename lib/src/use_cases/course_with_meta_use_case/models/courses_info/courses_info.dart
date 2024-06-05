import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/use_cases/course_with_meta_use_case/models/courses_info/course_info_element.dart';

part 'courses_info.freezed.dart';

@freezed
abstract class CoursesInfo with _$CoursesInfo {
   factory CoursesInfo({required List<CourseInfoElement> coursesInfo}) = _CoursesInfo;
}


