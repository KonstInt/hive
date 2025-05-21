part of 'account_registration_bloc.dart';

sealed class AccountRegistrationState {
  const AccountRegistrationState();
}

final class AccountRegistrationInitial extends AccountRegistrationState {}

final class AccountRegistrationLoading extends AccountRegistrationState {}

final class AccountRegistrationSuccess extends AccountRegistrationState {
  final String token;
  const AccountRegistrationSuccess({required this.token});
}

final class AccountRegistrationError extends AccountRegistrationState {
  final String error;

  const AccountRegistrationError({
    required this.error,
  });
}
