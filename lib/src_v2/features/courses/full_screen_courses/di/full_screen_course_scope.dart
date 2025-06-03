import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yx_scope/yx_scope.dart';
import '../../../auth/domain/interactor/auth_interactor.dart';
import '../data/repositories/course_repository.dart';
import '../presentation/bloc/full_course_bloc.dart';

class FullScreenCourseScopeHolder
    extends ScopeHolder<FullScreenCourseContainer> {
  final String _courseId;
  final AuthInteractor _authInteractor;

  FullScreenCourseScopeHolder({
    required String courseId,
    required AuthInteractor authInteractor,
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  })  : _authInteractor = authInteractor,
        _courseId = courseId;

  @override
  FullScreenCourseContainer createContainer() => FullScreenCourseContainer(
        courseId: _courseId,
        authInteractor: _authInteractor,
      );
}

class FullScreenCourseContainer extends ScopeContainer {
  final String _courseId;
  final AuthInteractor _authInteractor;

  FullScreenCourseContainer({
    required String courseId,
    required AuthInteractor authInteractor,
  })  : _authInteractor = authInteractor,
        _courseId = courseId;

  late final courseRepository = dep<CourseRepository>(
    () => CourseRepository(
      firestore: FirebaseFirestore.instance,
    ),
  );

  late final fullCourseBloc = dep<FullCourseBloc>(
    () => FullCourseBloc(
      repository: courseRepository.get,
      courseId: _courseId,
      authInteractor: _authInteractor,
    ),
  );
}
