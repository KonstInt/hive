import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/features/course_task/domain/models/course_test_task/course_test_task.dart';
import 'package:hive/src/features/course_task/domain/models/meta/course_test_task_meta.dart';
import 'package:hive/src/features/course_task/domain/repository/course_test_task_repository.dart';
import 'package:hive/src/use_cases/course_with_meta_use_case/course_with_meta_use_case.dart';
import 'package:hive/src/use_cases/course_with_meta_use_case/models/tasks_info/task_info.dart';
import 'package:hive/src/use_cases/updating_data_use_case/models/test_info_update/test_info_update.dart';
import 'package:hive/src/use_cases/updating_data_use_case/updating_data_use_case.dart';
import 'package:hive/src/use_cases/user_use_case/user_use_case.dart';
import 'package:injectable/injectable.dart';

part 'progress_saving_event.dart';
part 'progress_saving_state.dart';
part 'progress_saving_bloc.freezed.dart';

@injectable
class ProgressSavingBloc
    extends Bloc<ProgressSavingEvent, ProgressSavingState> {
  final MetaUpdatingDataUseCase _updatingDataUseCase;

  final CourseTestTaskRepository _repository;

  ProgressSavingBloc(this._repository, this._updatingDataUseCase)
      : super(const _Initial()) {
    on<ProgressSavingEvent>((event, emit) async {
      await event.map(save: (event) async => await save(event, emit));
    });
  }

  FutureOr<void> save(_Save event, Emitter<ProgressSavingState> emit) async {
    emit(const ProgressSavingState.saving());
    try {
      final String metaId =
          await _repository.setCourseTaskProgress(answer: event.answer);
      _updatingDataUseCase.updateTestMeta(
        TestInfoUpdate(
          taskId: event.task.id,
          taskMetaId: metaId,
          scores: countScores(event.answer, event.task),
        ),
      );
    } catch (e) {
      emit(const ProgressSavingState.error());
    }
  }

  double countScores(CourseTestTaskMeta answer, CourseTestTask task) {
    return task.map(
      quizTyped: (e) => answer.maybeMap(
          quiz: (x) => e.rightAnswer == x.answer ? e.scores : 0,
          orElse: () => 0),
      multiChoiceQuizTyped: (e) => answer.maybeMap(
          quizMultipleChoice: (x) => const DeepCollectionEquality.unordered()
                  .equals(x.answer, e.rightAnswers)
              ? e.scores
              : 0,
          orElse: () => 0),
      digitalInk: (e) => answer.maybeMap(
          digitalInk: (x) => e.rightAnswer == x.recognition ? e.scores : 0,
          orElse: () => 0),
    );
  }
}
