
import 'package:cloud_firestore/cloud_firestore.dart';

import '../shared/user_model.dart';

class UserApi {
  Future<UserModel> getCurrentUser(String userId) async {
    final snapshot =
        await FirebaseFirestore.instance.collection('users').doc(userId).get();
    final snapshotData = snapshot.data();
    if (snapshotData == null) {
      throw Exception('Not Exist');
    }
    return UserModel.fromJson(snapshotData);
  }

  Future<UserModel> updateUser(UserModel user, String token) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(token)
        .update(user.toJson());
    return user;
  }
}
