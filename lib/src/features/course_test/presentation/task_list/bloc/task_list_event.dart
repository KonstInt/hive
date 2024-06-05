part of 'task_list_bloc.dart';

@freezed
class TaskListEvent with _$TaskListEvent {
  const factory TaskListEvent.loadList(
      {required List<String> testListIds,
      required Map<String, String> metaId}) = _LoadList;
  const factory TaskListEvent.updateList() = _UpdateList;
}
