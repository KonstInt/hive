import 'package:hive/src_v2/features/courses/domain/models/course.dart';
import 'package:hive/src_v2/features/courses/domain/models/course_meta_info.dart';

abstract class CoursesRepository {
  Future<List<Course>> getCourses(String userId);
  Future<void> enrollInCourse(String userId, String courseId);
  Future<CourseMetaInfo> getCourseMetaInfo(String userId, String courseId);
}
