import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../domain/models/sign_up_user_model.dart';

class SignUpApi {
  Future<String> signUp(String login, String password) async {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: login,
      password: password,
    );

    final uuid = credential.user?.uid;

    if (uuid == null) {
      throw Exception('User not found');
    }
    return uuid;
  }

  Future<void> createUser(SignUpUserModel userModel, String uuid) async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(uuid)
        .set(userModel.toJson());
  }
}
