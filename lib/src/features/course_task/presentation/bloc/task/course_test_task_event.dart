part of 'course_test_task_bloc.dart';

@freezed
class CourseTestTaskEvent with _$CourseTestTaskEvent {
  const factory CourseTestTaskEvent.getCurrentTask({required String taskId, required String? meta}) = _GetCurrentTask;
}
