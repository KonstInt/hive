import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/use_cases/course_session_use_case/course_session_use_case.dart';
import 'package:hive/src/use_cases/course_session_use_case/models/course_session_model.dart';
import 'package:hive/src/use_cases/user_use_case/user_use_case.dart';
import 'package:injectable/injectable.dart';

part 'progress_saving_event.dart';
part 'progress_saving_state.dart';
part 'progress_saving_bloc.freezed.dart';

@injectable
class ProgressSavingBloc
    extends Bloc<ProgressSavingEvent, ProgressSavingState> {
  final CourseSessionUseCase _courseSession;
  final UserUseCase _userUseCase;
  late CourseSessionModel _session;
  late String _userId;
  ProgressSavingBloc(this._courseSession, this._userUseCase) : super(const _Initial()) {
    _listenSession();
    _listenUserModel();
    on<ProgressSavingEvent>((event, emit) async {
      await event.map(save: (event) async => await save(event, emit));
    });
  }

  void _listenSession() {
    _session = _courseSession.session;
    _courseSession.broadcast.listen((event) {
      _session = event;
    });
  }


  void _listenUserModel() {
    //TODO: check how we can control if user is null
    _userId = _userUseCase.user?.id??'error';
    _userUseCase.broadcast.listen((event) {
      _userId = event.id;
    });
  }

  FutureOr<void> save(_Save event, Emitter<ProgressSavingState> emit) async {
    //TODO: logic with task saving
  }
  
}
