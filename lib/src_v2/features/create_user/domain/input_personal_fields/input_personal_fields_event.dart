// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'input_personal_fields_bloc.dart';

sealed class InputPersonalFieldsEvent {
  const InputPersonalFieldsEvent();
}

class InputNameEvent extends InputPersonalFieldsEvent {
  final String? name;

  const InputNameEvent({
    this.name,
  });
}

class InputSecondNameEvent extends InputPersonalFieldsEvent {
  final String? secondName;

  const InputSecondNameEvent({
    this.secondName,
  });
}

class InputNicknameEvent extends InputPersonalFieldsEvent {
  final String? nickname;

  const InputNicknameEvent({
    this.nickname,
  });
}
