part of 'full_course_bloc.dart';

sealed class FullCourseEvent {
  const FullCourseEvent();
}

final class RefreshEvent extends FullCourseEvent {
  const RefreshEvent();
}
