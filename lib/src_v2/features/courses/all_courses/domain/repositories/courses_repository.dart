import 'package:hive/src_v2/features/courses/all_courses/domain/models/course.dart';
import 'package:hive/src_v2/features/courses/all_courses/domain/models/course_meta_info.dart';

abstract class CoursesRepository {
  Future<List<ShortCourse>> getCourses(
    String userId, {
    int? page,
    int? limit,
  });
  Future<void> enrollInCourse(String userId, String courseId);
  Future<CourseMetaInfo> getCourseMetaInfo(String userId, String courseId);
}
