import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/src/features/user/domain/repository/remote_user_repository.dart';
import 'package:hive/src/use_cases/user_use_case/user_use_case.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_control_event.dart';
part 'sign_in_control_state.dart';
part 'sign_in_control_bloc.freezed.dart';

@injectable
class SignInControlBloc extends Bloc<SignInControlEvent, SignInControlState> {
  SignInControlBloc(this._remoteUserRepository, this._userUseCase)
      : super(const _Loading()) {
    on<SignInControlEvent>((event, emit) async {
      await event.map(control: (event) async => await _control(event, emit));
    });
  }

  final UserUseCase _userUseCase;
  final RemoteUserRepository _remoteUserRepository;
  FutureOr<void> _control(
      _Control event, Emitter<SignInControlState> emit) async {
    emit(const SignInControlState.loading());
    final user = await _remoteUserRepository.getCurrentUser();
    if (user != null) {
      _userUseCase.writeUser(user);
      emit(const SignInControlState.loggedIn());
    } else {
      emit(const SignInControlState.loggedOut());
    }
  }
}
