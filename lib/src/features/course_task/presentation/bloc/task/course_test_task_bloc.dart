import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/features/course_task/domain/models/course_test_task/course_test_task.dart';
import 'package:hive/src/features/course_task/domain/repository/course_test_task_repository.dart';
import 'package:injectable/injectable.dart';

part 'course_test_task_event.dart';
part 'course_test_task_state.dart';
part 'course_test_task_bloc.freezed.dart';

@injectable
class CourseTestTaskBloc
    extends Bloc<CourseTestTaskEvent, CourseTestTaskState> {
  final CourseTestTaskRepository _repository;
  CourseTestTaskBloc(this._repository) : super(const _Initial()) {
    on<CourseTestTaskEvent>((event, emit) async {
      await event.map(
          getCurrentTask: (event) async => await getCurrentTask(event, emit));
    });
  }

  

  FutureOr<void> getCurrentTask(
      _GetCurrentTask event, Emitter<CourseTestTaskState> emit) async{
    emit(const CourseTestTaskState.loading());
    try{
      final response = await _repository.getCourseTestTask(taskId: event.taskId);
      emit( CourseTestTaskState.loaded(task: response));
    }
    catch(e){
      emit(const CourseTestTaskState.error());
    }
  }
}
