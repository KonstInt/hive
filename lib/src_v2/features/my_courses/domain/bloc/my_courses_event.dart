part of 'my_courses_bloc.dart';

sealed class MyCoursesEvent {
  const MyCoursesEvent();

  const factory MyCoursesEvent.loadCourses() = LoadCoursesEvent;
  const factory MyCoursesEvent.refresh() = RefreshEvent;
}

class LoadCoursesEvent extends MyCoursesEvent {
  const LoadCoursesEvent();
}

class RefreshEvent extends MyCoursesEvent {
  const RefreshEvent();
}