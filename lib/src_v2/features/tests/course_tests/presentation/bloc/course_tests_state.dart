part of 'course_tests_bloc.dart';

sealed class CourseTestsState {
  const CourseTestsState();
}

final class CourseTestsInitial extends CourseTestsState {
  const CourseTestsInitial();
}

final class CourseTestsLoading extends CourseTestsState {
  const CourseTestsLoading();
}

final class CourseTestsLoaded extends CourseTestsState {
  final List<CourseTestModel> tests;
  final bool hasMore;

  const CourseTestsLoaded({
    required this.tests,
    required this.hasMore,
  });
}

final class CourseTestsError extends CourseTestsState {
  final String message;

  const CourseTestsError({required this.message});
}
