import 'package:flutter_bloc/flutter_bloc.dart';

part 'input_account_registration_fields_event.dart';
part 'input_account_registration_fields_state.dart';

class InputAccountRegistrationFieldsBloc
    extends Bloc<InputSignUpFieldsEvent, InputAccountRegistrationFieldsState> {
  InputAccountRegistrationFieldsBloc()
      : super(InputAccountRegistrationFieldsNotCompleted()) {
    on<InputSignUpFieldsEvent>(
      (event, emit) {
        switch (event) {
          case InputSignUpEmailEvent():
            _emailInput(event, emit);
            break;
          case InputSignUpPasswordEvent():
            _passwordInput(event, emit);
            break;
          case InputSignUpPasswordSubmitEvent():
            _passwordSubmitInput(event, emit);
            break;
        }
      },
    );
  }

  void _emailInput(InputSignUpEmailEvent event,
      Emitter<InputAccountRegistrationFieldsState> emit) {
    final newEmail = event.email;

    _emitBasedOnValidation(
      emit: emit,
      email: newEmail,
      password: state.password,
      passwordSubmitted: state.passwordSubmitted,
    );
  }

  void _passwordInput(InputSignUpPasswordEvent event,
      Emitter<InputAccountRegistrationFieldsState> emit) {
    final newPassword = event.password;

    _emitBasedOnValidation(
      emit: emit,
      email: state.email,
      password: newPassword,
      passwordSubmitted: state.passwordSubmitted,
    );
  }

  void _passwordSubmitInput(InputSignUpPasswordSubmitEvent event,
      Emitter<InputAccountRegistrationFieldsState> emit) {
    final newPasswordSubmitted = event.passwordSubmitted;

    _emitBasedOnValidation(
      emit: emit,
      email: state.email,
      password: state.password,
      passwordSubmitted: newPasswordSubmitted,
    );
  }

  /// Валидация и эмит на основе текущего состояния полей
  void _emitBasedOnValidation({
    required Emitter<InputAccountRegistrationFieldsState> emit,
    required String? email,
    required String? password,
    required String? passwordSubmitted,
  }) {
    final isValid = (email?.isNotEmpty ?? false) &&
        (password?.isNotEmpty ?? false) &&
        (passwordSubmitted?.isNotEmpty ?? false) &&
        emailValidator(email) == null &&
        passwordValidator(password) == null &&
        passwordSubmittedValidator(passwordSubmitted) == null;

    if (isValid) {
      emit(InputAccountRegistrationFieldsCompleted(
        email: email,
        password: password,
        passwordSubmitted: passwordSubmitted,
      ));
    } else {
      emit(InputAccountRegistrationFieldsNotCompleted(
        email: email,
        password: password,
        passwordSubmitted: passwordSubmitted,
      ));
    }
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (value.length < 6) {
      return 'Пароль должен составлять хотя бы 6 символов!';
    }
    return null;
  }

  String? passwordSubmittedValidator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (value != state.password) {
      return 'Пароли не совпадают!';
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Данная почта не валидна!';
    }
    return null;
  }
}
