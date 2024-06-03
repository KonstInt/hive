import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/use_cases/course_session_use_case/course_session_use_case.dart';
import 'package:hive/src/use_cases/course_session_use_case/models/course_session_model.dart';
import 'package:hive/src/features/course_task/domain/models/course_test/course_test_task.dart';
import 'package:injectable/injectable.dart';

part 'course_test_task_event.dart';
part 'course_test_task_state.dart';
part 'course_test_task_bloc.freezed.dart';

@injectable
class CourseTestTaskBloc
    extends Bloc<CourseTestTaskEvent, CourseTestTaskState> {
  final CourseSessionUseCase _courseSession;
  late CourseSessionModel _session;
  CourseTestTaskBloc(this._courseSession) : super(const _Initial()) {
    _listenSession();
    on<CourseTestTaskEvent>((event, emit) async {
      await event.map(
          getCurrentTask: (event) async => await getCurrentTask(event, emit));
    });
  }

  void _listenSession() {
    _session = _courseSession.session;
    _courseSession.broadcast.listen((event) {
      _session = event;
    });
  }

  FutureOr<void> getCurrentTask(
      _GetCurrentTask event, Emitter<CourseTestTaskState> emit) {
    //TODO: logic with task get
  }
}
