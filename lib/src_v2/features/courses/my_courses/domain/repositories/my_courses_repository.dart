import '../models/course_model.dart';

abstract class MyCoursesRepository {
  Future<List<CourseModel>> getUserCourses(String userId);
}
