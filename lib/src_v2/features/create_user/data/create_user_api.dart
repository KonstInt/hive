import 'package:cloud_firestore/cloud_firestore.dart';

import '../../user/shared/user_model.dart' show UserModel;

class CreateUserApi {
  Future<void> createUser(UserModel userModel, String uuid) async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(uuid)
        .set(userModel.toJson());
  }
}
