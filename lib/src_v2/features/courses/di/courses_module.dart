import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import '../data/repositories/courses_repository_impl.dart';
import '../domain/repositories/courses_repository.dart';
import '../domain/usecases/get_all_courses_usecase.dart';

void initCoursesModule() {
  final getIt = GetIt.instance;

  // Repository
  getIt.registerLazySingleton<CoursesRepository>(
    () => CoursesRepositoryImpl(FirebaseFirestore.instance),
  );

  // Use cases
  getIt.registerLazySingleton(
    () => GetAllCoursesUseCase(getIt()),
  );
}
