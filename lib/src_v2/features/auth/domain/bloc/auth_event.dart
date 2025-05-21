part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthInEvent extends AuthEvent {}

class AuthOutEvent extends AuthEvent {}
