part of 'course_tests_bloc.dart';

sealed class CourseTestsEvent {
  const CourseTestsEvent();
}

final class LoadTestsEvent extends CourseTestsEvent {
  const LoadTestsEvent();
}

final class LoadMoreEvent extends CourseTestsEvent {
  const LoadMoreEvent();
}
