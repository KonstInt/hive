import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/features/course_test/domain/models/course_test/course_test_model.dart';
import 'package:hive/src/features/course_test/domain/models/meta/course_test_meta.dart';
import 'package:hive/src/features/course_test/domain/repository/course_test_repository.dart';
import 'package:hive/src/use_cases/course_with_meta_use_case/course_with_meta_use_case.dart';
import 'package:hive/src/use_cases/updating_data_use_case/updating_data_use_case.dart';

part 'task_list_event.dart';
part 'task_list_state.dart';
part 'task_list_bloc.freezed.dart';

class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  final CourseTestRepository _repository;
  final CourseWithMetaUseCase _courseWithMetaUseCase;
  final MetaUpdatingDataUseCase _metaUpdatingDataUseCase;

  //List<CourseTestModel> _courseTests;
  TaskListBloc(this._courseWithMetaUseCase, this._metaUpdatingDataUseCase,
      this._repository)
      : super(const _Loading()) {
    _listenCourseWithMetaUseCase();
    _listenMetaUpdatingDataUseCase();
    on<TaskListEvent>((event, emit) async {
      await event.map(loadList: (event) async => await loadList(event, emit), updateList: (event) async => await updateList(event, emit));
    });
  }

  FutureOr<void> loadList(_LoadList event, Emitter<TaskListState> emit) async {
    emit(const TaskListState.loading());
    try {
      List<CourseTestModel> tests = [];
      for (var testId in event.testListIds) {
        if (event.metaId.containsKey(testId)) {
          tests.add(
            await _repository.getCourseTestWithMeta(
                testId: testId, metaTestId: event.metaId[testId]!),
          );
        } else {
          tests.add(
            await _repository.getCourseTestWithoutMeta(testId: testId),
          );
        }
      }
      //TODO:
      //_courseTests = tests;
      emit(TaskListState.loaded(model: tests));
    } catch (e) {
      emit(const TaskListState.error());
    }
  }

  void _listenCourseWithMetaUseCase() {
    _courseWithMetaUseCase.testsBroadcast.listen((event) => add(
        TaskListEvent.loadList(testListIds: event.tests, metaId: event.meta)));
  }

  void _listenMetaUpdatingDataUseCase() {
    _metaUpdatingDataUseCase.updateTestBroadcast.listen((event){
      //TODO:
      //add(const TaskListEvent.updateList());
      
    });
  }
  
  updateList(_UpdateList event, Emitter<TaskListState> emit) {

  }
}
