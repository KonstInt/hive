import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_info.freezed.dart';

@freezed
abstract class TaskInfo with _$TaskInfo {
   factory TaskInfo({required String task, required bool hasMeta}) = _TasksInfo;
}