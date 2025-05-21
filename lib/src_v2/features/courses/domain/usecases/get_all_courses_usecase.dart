import 'package:fpdart/fpdart.dart';
import '../entities/course.dart';
import '../repositories/courses_repository.dart';
import '../../../../utils/failure.dart';
import '../../../../utils/usecase.dart';

class GetAllCoursesUseCase implements UseCase<List<Course>, NoParams> {
  final CoursesRepository repository;

  GetAllCoursesUseCase(this.repository);

  @override
  Future<Either<Failure, List<Course>>> call(NoParams params) async {
    return await repository.getAllCourses();
  }
}
