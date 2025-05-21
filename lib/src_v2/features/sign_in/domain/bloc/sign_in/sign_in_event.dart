// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sign_in_bloc.dart';

@immutable
sealed class SignInEvent {
  const SignInEvent();
}

class SignInInitEvent extends SignInEvent {
  final SignInCredential credential;

  const SignInInitEvent({
    required this.credential,
  });
}


