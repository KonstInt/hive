part of 'courses_bloc.dart';

sealed class CoursesEvent {
  const CoursesEvent();
}

class LoadCourses extends CoursesEvent {
  final bool usePagination;

  const LoadCourses({this.usePagination = false});
}

class LoadMore extends CoursesEvent {
  const LoadMore();
}

class EnrollInCourse extends CoursesEvent {
  final String courseId;

  const EnrollInCourse(this.courseId);
}

class SearchCourses extends CoursesEvent {
  final String query;

  const SearchCourses(this.query);
}
