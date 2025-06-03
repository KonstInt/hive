part of 'full_course_bloc.dart';

sealed class FullCourseState {
  const FullCourseState();
}

final class FullCourseInitial extends FullCourseState {
  const FullCourseInitial();
}

final class FullCourseLoading extends FullCourseState {
  const FullCourseLoading();
}

final class FullCourseLoaded extends FullCourseState {
  final FullCourseModel course;

  const FullCourseLoaded({required this.course});
}

final class FullCourseError extends FullCourseState {
  final String message;

  const FullCourseError({required this.message});
}
