// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'input_account_registration_fields.dart';

sealed class InputSignUpFieldsEvent {
  const InputSignUpFieldsEvent();
}

class InputSignUpEmailEvent extends InputSignUpFieldsEvent {
  final String? email;

  const InputSignUpEmailEvent({
    this.email,
  });
}

class InputSignUpPasswordEvent extends InputSignUpFieldsEvent {
  final String? password;

  const InputSignUpPasswordEvent({
    this.password,
  });
}

class InputSignUpPasswordSubmitEvent extends InputSignUpFieldsEvent {
  final String? passwordSubmitted;

  const InputSignUpPasswordSubmitEvent({
    this.passwordSubmitted,
  });
}
