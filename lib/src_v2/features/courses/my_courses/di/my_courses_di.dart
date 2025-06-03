import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/src_v2/features/auth/domain/interactor/auth_interactor.dart';
import 'package:yx_scope/yx_scope.dart';
import '../domain/bloc/my_courses_bloc.dart';
import '../data/repositories/my_courses_repository_impl.dart';

class MyCoursesScopeHolder extends ScopeHolder<MyCoursesContainer> {
  final AuthInteractor authInteractor;

  MyCoursesScopeHolder({
    required this.authInteractor,
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  });

  @override
  MyCoursesContainer createContainer() => MyCoursesContainer(
        authInteractor: authInteractor,
      );
}

class MyCoursesContainer extends ScopeContainer {
  final AuthInteractor authInteractor;

  MyCoursesContainer({
    required this.authInteractor,
  });

  @override
  List<Set<AsyncDep>> get initializeQueue => [
        {
          myCoursesBloc,
        }
      ];

  late final myCoursesInteractor = dep(
    () => MyCoursesBloc(
      repository: _myCoursesRepository.get,
      authInteractor: authInteractor,
    ),
  );

  late final myCoursesBloc = rawAsyncDep(
    () => MyCoursesBloc(
      repository: _myCoursesRepository.get,
      authInteractor: authInteractor,
    ),
    init: (dep) async => dep.add(MyCoursesEvent.loadCourses()),
    dispose: (dep) async => dep.close(),
  );

  late final _myCoursesRepository = dep(
    () => MyCoursesRepositoryImpl(
      firestore: FirebaseFirestore.instance,
    ),
  );
}
