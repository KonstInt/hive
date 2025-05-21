import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yx_scope/yx_scope.dart';
import '../domain/bloc/courses_bloc.dart';
import '../data/repositories/courses_repository_impl.dart';

class CoursesScopeHolder extends ScopeHolder<CoursesContainer> {
  CoursesScopeHolder({
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  });

  @override
  CoursesContainer createContainer() => CoursesContainer();
}

class CoursesContainer extends ScopeContainer {
  late final coursesBloc = dep(
    () => CoursesBloc(
      repository: _coursesRepository.get,
    ),
  );

  late final _coursesRepository = dep(
    () => CoursesRepositoryImpl(
      firestore: FirebaseFirestore.instance,
    ),
  );
}
