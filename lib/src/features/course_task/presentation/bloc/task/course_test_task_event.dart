part of 'course_test_task_bloc.dart';

@freezed
class CourseTestTaskEvent with _$CourseTestTaskEvent {
  const factory CourseTestTaskEvent.getCurrentTask() = _GetCurrentTask;
}
