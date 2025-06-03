part of 'account_create_user_bloc.dart';

@immutable
sealed class AccountCreateUserState {
  const AccountCreateUserState();
}

final class AccountCreateUserInitial extends AccountCreateUserState {}

final class AccountCreateUserLoading extends AccountCreateUserState {}

final class AccountCreateUserSuccess extends AccountCreateUserState {}

final class AccountCreateUserError extends AccountCreateUserState {
  final String error;

  const AccountCreateUserError({
    required this.error,
  });
}
