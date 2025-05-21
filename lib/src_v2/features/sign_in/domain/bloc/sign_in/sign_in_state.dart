part of 'sign_in_bloc.dart';

@immutable
sealed class SignInState {
  const SignInState();
}

final class SignInInitial extends SignInState {}

final class SignInLoading extends SignInState {}

final class SignInSuccess extends SignInState {
  final String uuid;

  const SignInSuccess({
    required this.uuid,
  });
}

final class SignInFailure extends SignInState {
  const SignInFailure();
}

final class SignInError extends SignInState {
  const SignInError();
}
