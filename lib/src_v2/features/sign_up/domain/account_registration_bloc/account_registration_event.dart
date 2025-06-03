part of 'account_registration_bloc.dart';

sealed class AccountRegistrationEvent {
  const AccountRegistrationEvent();
}

class AccountRegistrationEmailEvent extends AccountRegistrationEvent {
  final String email;
  final String password;

  const AccountRegistrationEmailEvent({
    required this.email,
    required this.password,
  });
}
