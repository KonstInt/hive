part of 'task_list_bloc.dart';

@freezed
class TaskListState with _$TaskListState {
  const factory TaskListState.loading() = _Loading;
  const factory TaskListState.loaded({required List<CourseTestModel> model}) = _Loaded;
  const factory TaskListState.error() = _Error;
}
