import 'package:hive/src/features/user/data/firebase/models/user/firebase_api_user_model.dart';
import 'package:hive/src/features/user/domain/models/user/user_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirebaseUserMapper {
  FirebaseUserMapper();
  UserModel userModelFromApi(FirebaseApiUserModel model) {
    return UserModel(
      id: model.id,
      name: model.name,
      email: model.email,
      secondName: model.secondName,
      nickname: model.nickname,
      photoUrl: model.photoUrl,
    );
  }

  FirebaseApiUserModel userModelToApi(UserModel model) {
    return FirebaseApiUserModel(
      id: model.id,
      name: model.name,
      secondName: model.secondName,
      email: model.email,
      nickname: model.nickname,
      photoUrl: model.photoUrl,
    );
  }
}
