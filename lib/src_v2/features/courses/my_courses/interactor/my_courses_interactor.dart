import '../domain/bloc/my_courses_bloc.dart';

class MyCoursesInteractor {
  final MyCoursesBloc _myCoursesBloc;

  MyCoursesInteractor({
    required MyCoursesBloc myCoursesBloc,
  }) : _myCoursesBloc = myCoursesBloc;

  void loadCourses() {
    _myCoursesBloc.add(const LoadCoursesEvent());
  }

  void refreshCourses() {
    _myCoursesBloc.add(const RefreshEvent());
  }
}
