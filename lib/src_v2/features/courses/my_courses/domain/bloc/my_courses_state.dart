part of 'my_courses_bloc.dart';

sealed class MyCoursesState {
  const MyCoursesState();

  const factory MyCoursesState.initial() = MyCoursesInitial;
  const factory MyCoursesState.loading() = MyCoursesLoading;
  const factory MyCoursesState.loaded(List<CourseModel> courses) =
      MyCoursesLoaded;
  const factory MyCoursesState.error(String message) = MyCoursesError;
}

class MyCoursesInitial extends MyCoursesState {
  const MyCoursesInitial();
}

class MyCoursesLoading extends MyCoursesState {
  const MyCoursesLoading();
}

class MyCoursesLoaded extends MyCoursesState {
  final List<CourseModel> courses;
  const MyCoursesLoaded(this.courses);
}

class MyCoursesError extends MyCoursesState {
  final String message;
  const MyCoursesError(this.message);
}
