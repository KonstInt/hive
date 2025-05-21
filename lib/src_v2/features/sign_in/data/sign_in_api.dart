import 'package:firebase_auth/firebase_auth.dart';

class SignInApi {
  const SignInApi();
  Future<String> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final currentUser = FirebaseAuth.instance.currentUser;
      
      if (currentUser != null) {
        return currentUser.uid;
      }
      else{
        throw Exception('User not found');
      }
    } on Exception {
      rethrow;
    }
  }
}
