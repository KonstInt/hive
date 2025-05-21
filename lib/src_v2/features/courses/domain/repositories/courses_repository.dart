import 'package:fpdart/fpdart.dart';
import '../entities/course.dart';
import '../../../../utils/failure.dart';

abstract class CoursesRepository {
  Future<Either<Failure, List<Course>>> getAllCourses();
  Future<Either<Failure, Course>> getCourseById(String id);
}
