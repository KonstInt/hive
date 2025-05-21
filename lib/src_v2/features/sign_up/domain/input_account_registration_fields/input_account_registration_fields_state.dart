part of 'input_account_registration_fields.dart';

sealed class InputAccountRegistrationFieldsState {
  final String? email;
  final String? password;
  final String? passwordSubmitted;

  const InputAccountRegistrationFieldsState({
    required this.email,
    required this.password,
    required this.passwordSubmitted,
  });
}

final class InputAccountRegistrationFieldsCompleted
    extends InputAccountRegistrationFieldsState {
  const InputAccountRegistrationFieldsCompleted({
    super.email,
    super.password,
    super.passwordSubmitted,
  });
}

final class InputAccountRegistrationFieldsNotCompleted
    extends InputAccountRegistrationFieldsState {
  const InputAccountRegistrationFieldsNotCompleted({
    super.email,
    super.password,
    super.passwordSubmitted,
  });
}
