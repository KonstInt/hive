import 'package:flutter_bloc/flutter_bloc.dart';

part 'input_personal_fields_event.dart';
part 'input_personal_fields_state.dart';

class InputPersonalFieldsBloc
    extends Bloc<InputPersonalFieldsEvent, InputPersonalFieldsState> {
  InputPersonalFieldsBloc() : super(InputPersonalFieldsNotCompleted()) {
    on<InputPersonalFieldsEvent>(
      (event, emit) {
        switch (event) {
          case InputNameEvent():
            _nameInput(event, emit);
            break;
          case InputSecondNameEvent():
            _secondNameInput(event, emit);
            break;
          case InputNicknameEvent():
            _nicknameInput(event, emit);
            break;
        }
      },
    );
  }

  void _nameInput(
      InputNameEvent event, Emitter<InputPersonalFieldsState> emit) {
    final newName = event.name;

    _emitBasedOnPersonalValidation(
      emit: emit,
      name: newName,
      secondName: state.secondName,
      nickname: state.nickname,
    );
  }

  void _secondNameInput(
      InputSecondNameEvent event, Emitter<InputPersonalFieldsState> emit) {
    final newSecondName = event.secondName;

    _emitBasedOnPersonalValidation(
      emit: emit,
      name: state.name,
      secondName: newSecondName,
      nickname: state.nickname,
    );
  }

  void _nicknameInput(
      InputNicknameEvent event, Emitter<InputPersonalFieldsState> emit) {
    final newNickname = event.nickname;

    _emitBasedOnPersonalValidation(
      emit: emit,
      name: state.name,
      secondName: state.secondName,
      nickname: newNickname,
    );
  }

  void _emitBasedOnPersonalValidation({
    required Emitter<InputPersonalFieldsState> emit,
    required String? name,
    required String? secondName,
    required String? nickname,
  }) {
    final isValid = (name?.isNotEmpty ?? false) &&
        (secondName?.isNotEmpty ?? false) &&
        (nickname?.isNotEmpty ?? false) &&
        nameValidator(name) == null &&
        secondNameValidator(secondName) == null &&
        nicknameValidator(nickname) == null;

    if (isValid) {
      emit(InputPersonalFieldsCompleted(
        name: name,
        secondName: secondName,
        nickname: nickname,
      ));
    } else {
      emit(InputPersonalFieldsNotCompleted(
        name: name,
        secondName: secondName,
        nickname: nickname,
      ));
    }
  }

  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!RegExp(r"^[А-Яа-яA-Za-z\-]+$").hasMatch(value)) {
      return 'Имя может содержать только буквы и дефис';
    }
    return null;
  }

  String? secondNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!RegExp(r"^[А-Яа-яA-Za-z\-]+$").hasMatch(value)) {
      return 'Фамилия может содержать только буквы и дефис';
    }
    return null;
  }

  String? nicknameValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }
    if (value.length < 3) {
      return 'Никнейм должен быть не короче 3 символов';
    }
    if (!RegExp(r"^[A-Za-z0-9_]+$").hasMatch(value)) {
      return 'Никнейм может содержать только латинские буквы, цифры и _';
    }
    return null;
  }
}
