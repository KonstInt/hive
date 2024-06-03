part of 'course_test_task_bloc.dart';

@freezed
class CourseTestTaskState with _$CourseTestTaskState {
  const factory CourseTestTaskState.initial() = _Initial;
  const factory CourseTestTaskState.loading() = _Loading;
  const factory CourseTestTaskState.loaded({required CourseTestTask task}) =
      _Loaded;
  const factory CourseTestTaskState.error() = _Error;
}
