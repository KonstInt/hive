part of 'input_personal_fields_bloc.dart';

sealed class InputPersonalFieldsState {
  final String? name;
  final String? secondName;
  final String? nickname;

  const InputPersonalFieldsState({
    required this.name,
    required this.secondName,
    required this.nickname,
  });
}

final class InputPersonalFieldsCompleted extends InputPersonalFieldsState {
  const InputPersonalFieldsCompleted({
    super.name,
    super.secondName,
    super.nickname,
  });
}

final class InputPersonalFieldsNotCompleted extends InputPersonalFieldsState {
  const InputPersonalFieldsNotCompleted({
    super.name,
    super.secondName,
    super.nickname,
  });
}
