part of 'user_bloc.dart';

@immutable
sealed class UserState {}

final class UserLoadingState extends UserState {}

final class UserLoadedState extends UserState {
  final UserModel userDataModel;

  UserLoadedState({required this.userDataModel});
}

final class UserErrorState extends UserState {}
