part of 'input_fields_bloc.dart';

sealed class InputFieldsState {
  final String? email;
  final String? password;

  const InputFieldsState({
    required this.email,
    required this.password,
  });
}

final class InputFieldsCompleted extends InputFieldsState {
  const InputFieldsCompleted({
    super.email,
    super.password,
  });
}

final class InputFieldsNotCompleted extends InputFieldsState {
  const InputFieldsNotCompleted({
    super.email,
    super.password,
  });
}
