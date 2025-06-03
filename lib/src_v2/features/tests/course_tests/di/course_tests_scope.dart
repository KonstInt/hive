import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yx_scope/yx_scope.dart';
import '../../../auth/domain/interactor/auth_interactor.dart';
import '../data/repositories/course_tests_repository.dart';
import '../presentation/bloc/course_tests_bloc.dart';

class CourseTestsScopeHolder extends ScopeHolder<CourseTestsContainer> {
  final String courseId;
  final AuthInteractor authInteractor;

  CourseTestsScopeHolder({
    required this.courseId,
    required this.authInteractor,
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  });

  @override
  CourseTestsContainer createContainer() => CourseTestsContainer(
        courseId: courseId,
        authInteractor: authInteractor,
      );
}

class CourseTestsContainer extends ScopeContainer {
  final AuthInteractor _authInteractor;
  final String _courseId;

  CourseTestsContainer({
    required AuthInteractor authInteractor,
    required String courseId,
  })  : _courseId = courseId,
        _authInteractor = authInteractor;

   @override
  List<Set<AsyncDep>> get initializeQueue => [
        {
          courseTestsBloc,
        }
      ];

  late final courseRepository = dep<CourseTestsRepository>(
    () => CourseTestsRepository(
      firestore: FirebaseFirestore.instance,
    ),
  );

  late final courseTestsBloc = rawAsyncDep<CourseTestsBloc>(
    () => CourseTestsBloc(
      repository: courseRepository.get,
      authInteractor: _authInteractor,
      courseId: _courseId,
    ),
    init: (dep) async => dep.add(
      LoadTestsEvent(),
    ),
    dispose: (dep) => dep.close(),
  );
}
