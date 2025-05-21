import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/auth/data/firebase_auth_api.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  FirebaseAuthApi _api;
  AuthBloc({required FirebaseAuthApi api})
      : _api = api,
        super(AuthLoadingState()) {
    on<AuthEvent>((event, emit) async {
      switch (event) {
        case AuthInEvent _:
          await _authIn(event, emit);
          break;
        case AuthOutEvent _:
          await _authOut(event, emit);
          break;
      }
    });
  }

  Future<void> _authIn(AuthInEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoadingState());
    try {
      final authModel = await _api.getCurrentUuid();
      if (authModel == null) {
        emit(AuthOutState());
      } else {
        final isUser = await _api.checkUser(uuid: authModel.token);
        if (isUser) {
          emit(
            AuthInState(
              uuid: authModel.token,
            ),
          );
        } else {
          emit(
            AuthNoUserState(
              uuid: authModel.token,
            ),
          );
        }
      }
    } catch (e) {
      emit(AuthErrorState());
    }
  }

  Future<void> _authOut(AuthOutEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoadingState());
    try {
      await _api.signOut();
      emit(AuthOutState());
    } catch (e) {
      emit(AuthErrorState());
    }
  }
}
