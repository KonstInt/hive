part of 'courses_bloc.dart';
sealed class CoursesEvent {
  const CoursesEvent();
}

class LoadCourses extends CoursesEvent {
  const LoadCourses();
}

class EnrollInCourse extends CoursesEvent {
  final String courseId;

  const EnrollInCourse(this.courseId);
}

class SearchCourses extends CoursesEvent {
  final String query;

  const SearchCourses(this.query);
}
