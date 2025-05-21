part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthLoadingState extends AuthState {}

final class AuthOutState extends AuthState {}

final class AuthInState extends AuthState {
  final String uuid;
  AuthInState({
    required this.uuid,
  });
}

final class AuthNoUserState extends AuthState {
  final String uuid;
  AuthNoUserState({
    required this.uuid,
  });
}

final class AuthErrorState extends AuthState {}
