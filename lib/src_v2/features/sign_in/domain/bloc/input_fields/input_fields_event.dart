// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'input_fields_bloc.dart';

sealed class InputFieldsEvent {
  const InputFieldsEvent();
}

class InputEmailEvent extends InputFieldsEvent {
  final String? email;

  const InputEmailEvent({
    this.email,
  });
}

class InputPasswordEvent extends InputFieldsEvent {
  final String? password;

  const InputPasswordEvent({
    this.password,
  });
}
