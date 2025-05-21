import 'package:flutter_bloc/flutter_bloc.dart';

part 'input_fields_event.dart';
part 'input_fields_state.dart';

class InputFieldsBloc extends Bloc<InputFieldsEvent, InputFieldsState> {
  InputFieldsBloc() : super(InputFieldsNotCompleted()) {
    on<InputFieldsEvent>((event, emit) {
      switch (event) {
        case InputEmailEvent():
          _emailInput(event, emit);
          break;
        case InputPasswordEvent():
          _passwordInput(event, emit);
          break;
      }
    });
  }

  void _emailInput(InputEmailEvent event, Emitter<InputFieldsState> emit) {
    if (passwordValidator(state.password) == null &&
        emailValidator(event.email) == null &&
        state.password != null &&
        state.email != null) {
      emit(
        InputFieldsCompleted(
          email: event.email,
          password: state.password,
        ),
      );
    } else {
      emit(
        InputFieldsNotCompleted(
          email: event.email,
          password: state.password,
        ),
      );
    }
  }

  void _passwordInput(
      InputPasswordEvent event, Emitter<InputFieldsState> emit) {
    if (passwordValidator(event.password) == null &&
        emailValidator(state.email) == null &&
        state.password != null &&
        state.email != null) {
      emit(
        InputFieldsCompleted(
          email: state.email,
          password: event.password,
        ),
      );
    } else {
      emit(
        InputFieldsNotCompleted(
          email: state.email,
          password: event.password,
        ),
      );
    }
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }
}
