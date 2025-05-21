// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hive/src_v2/features/auth/domain/bloc/auth_bloc.dart';

class AuthInteractor {
  final AuthBloc _authBloc;
  AuthInteractor({
    required AuthBloc authBloc,
  }) : _authBloc = authBloc;

  void authIn() {
    _authBloc.add(AuthInEvent());
  }

  void authOut() {
    _authBloc.add(AuthOutEvent());
  }

  String getCurrentUuid() {
    return switch (_authBloc.state) {
      AuthInState state => state.uuid,
      _ => throw Exception('uuid called when session not authed!'),
    };
  }

  Stream<AuthState> getAuthStream() {
    return _authBloc.stream;
  }
}
