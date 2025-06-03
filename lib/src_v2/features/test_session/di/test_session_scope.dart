import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/src_v2/features/auth/domain/interactor/auth_interactor.dart';
import 'package:yx_scope/yx_scope.dart';
import '../bloc/test_session_bloc.dart';
import '../repositories/test_session_repository.dart';

class TestSessionScopeHolder extends ScopeHolder<TestSessionScopeContainer> {
  final String courseId;
  final String testId;
  final AuthInteractor authInteractor;

  TestSessionScopeHolder({
    required this.courseId,
    required this.testId,
    required this.authInteractor,
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  });

  @override
  TestSessionScopeContainer createContainer() => TestSessionScopeContainer(
        courseId: courseId,
        testId: testId,
        authInteractor: authInteractor,
      );
}

class TestSessionScopeContainer extends ScopeContainer {
  final String courseId;
  final String testId;
  final AuthInteractor authInteractor;

  TestSessionScopeContainer({
    required this.courseId,
    required this.testId,
    required this.authInteractor,
  });

  @override
  List<Set<AsyncDep>> get initializeQueue => [
        {
          bloc,
        }
      ];

  late final repository = dep(() => TestSessionRepository(
        firestore: FirebaseFirestore.instance,
      ));

  late final bloc = rawAsyncDep(
    () => TestSessionBloc(
      courseId: courseId,
      testId: testId,
      repository: repository.get,
      authInteractor: authInteractor,
    ),
    init: (dep) async => dep.add(TestSessionStarted()),
    dispose: (dep) => dep.close(),
  );
}
