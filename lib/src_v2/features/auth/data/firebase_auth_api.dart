import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:hive/src_v2/features/auth/shared/models/auth_model.dart';

class FirebaseAuthApi {
  Future<AuthModel?> getCurrentUuid() async {
    final String? token = firebase_auth.FirebaseAuth.instance.currentUser?.uid;
    if (token == null) {
      return null;
    }

    return AuthModel(token: token);
  }

  Future<bool> checkUser({required String uuid}) async {
    final doc =
        await FirebaseFirestore.instance.collection('users').doc(uuid).get();
    return doc.exists;
  }

  Future<void> signOut() async {
    await firebase_auth.FirebaseAuth.instance.signOut();
  }
}
