import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/src_v2/features/sign_in/domain/models/sign_in_credential.dart';
import 'package:meta/meta.dart';

import '../../../data/sign_in_api.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInApi _signInApi;
  
  SignInBloc({required SignInApi signInApi})
      : _signInApi = signInApi,
        super(SignInInitial()) {
    on<SignInEvent>((event, emit) async {
      switch (event) {
        case SignInInitEvent():
          await _signIn(event, emit);
          break;
      }
    });
  }

  Future<void> _signIn(SignInInitEvent event, Emitter<SignInState> emit) async {
    emit(SignInLoading());
    try {
      final uuid = await _signInApi.signIn(
        email: event.credential.email,
        password: event.credential.password,
      );
      emit(SignInSuccess(uuid: uuid));
    } on FirebaseAuthException {
      emit(SignInFailure());
    } on Object {
      emit(SignInError());
    }
  }
}
