import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yx_scope/yx_scope.dart';

import '../../../auth/domain/interactor/auth_interactor.dart';
import '../data/repositories/courses_repository_impl.dart';
import '../presentation/bloc/courses_bloc.dart';

class CoursesScopeHolder extends ScopeHolder<CoursesContainer> {
  final AuthInteractor _authInteractor;

  CoursesScopeHolder({
    required AuthInteractor authInteractor,
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  }) : _authInteractor = authInteractor;

  @override
  CoursesContainer createContainer() => CoursesContainer(
        authInteractor: _authInteractor,
      );
}

class CoursesContainer extends ScopeContainer {
  final AuthInteractor _authInteractor;

  CoursesContainer({
    required AuthInteractor authInteractor,
  }) : _authInteractor = authInteractor;

  @override
  List<Set<AsyncDep>> get initializeQueue => [
        {
          coursesBloc,
        }
      ];

  late final coursesBloc = rawAsyncDep(
    () => CoursesBloc(
      authInteractor: _authInteractor,
      coursesRepository: _coursesRepository.get,
    ),
    init: (dep) async => dep.add(
      LoadCourses(),
    ),
    dispose: (dep) => dep.close(),
  );

  late final _coursesRepository = dep(
    () => CoursesRepositoryImpl(
      firestore: FirebaseFirestore.instance,
    ),
  );
}
