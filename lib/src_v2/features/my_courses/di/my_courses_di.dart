import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yx_scope/yx_scope.dart';
import '../domain/bloc/my_courses_bloc.dart';
import '../data/repositories/my_courses_repository_impl.dart';

class MyCoursesScopeHolder extends ScopeHolder<MyCoursesContainer> {
  final String userId;

  MyCoursesScopeHolder({
    required this.userId,
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  });

  @override
  MyCoursesContainer createContainer() => MyCoursesContainer(userId: userId);
}

class MyCoursesContainer extends ScopeContainer {
  final String userId;

  MyCoursesContainer({required this.userId});

  late final myCoursesBloc = dep(
    () => MyCoursesBloc(
      repository: _myCoursesRepository.get,
      userId: userId,
    ),
  );

  late final _myCoursesRepository = dep(
    () => MyCoursesRepositoryImpl(
      firestore: FirebaseFirestore.instance,
    ),
  );
}
