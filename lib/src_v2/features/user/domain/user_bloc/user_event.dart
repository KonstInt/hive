part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

final class UserLoadEvent extends UserEvent {
  final String uuid;

  UserLoadEvent({
    required this.uuid,
  });
}

final class UserUpdateEvent extends UserEvent {
  final UserModel userModel;

  UserUpdateEvent({
    required this.userModel,
  });
}
