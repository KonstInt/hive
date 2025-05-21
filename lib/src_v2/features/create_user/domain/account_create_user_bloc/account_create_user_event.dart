part of 'account_create_user_bloc.dart';

@immutable
sealed class AccountCreateUserEvent {
  const AccountCreateUserEvent();
}

class AccountCreateNewUserEvent extends AccountCreateUserEvent {
  final UserModel userModel;
  const AccountCreateNewUserEvent({
    required this.userModel,
  });
}
