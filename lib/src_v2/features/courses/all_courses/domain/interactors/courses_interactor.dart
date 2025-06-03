import 'package:hive/src_v2/features/auth/domain/interactor/auth_interactor.dart';
import 'package:hive/src_v2/features/courses/all_courses/domain/models/course.dart';
import 'package:hive/src_v2/features/courses/all_courses/domain/models/course_meta_info.dart';
import 'package:hive/src_v2/features/courses/all_courses/domain/repositories/courses_repository.dart';

class CoursesInteractor {
  final CoursesRepository _repository;
  final AuthInteractor _authInteractor;

  CoursesInteractor({
    required CoursesRepository repository,
    required AuthInteractor authInteractor,
  })  : _repository = repository,
        _authInteractor = authInteractor;

  Future<List<ShortCourse>> getCourses() =>
      _repository.getCourses(_authInteractor.getCurrentUuid());

  Future<void> enrollInCourse(String courseId) =>
      _repository.enrollInCourse(_authInteractor.getCurrentUuid(), courseId);

  Future<CourseMetaInfo> getCourseMetaInfo(String courseId) =>
      _repository.getCourseMetaInfo(_authInteractor.getCurrentUuid(), courseId);
}
