import 'package:hive/src/features/user/domain/models/user/user_model.dart';

abstract class LocalUserRepository {
  Future<UserModel> saveUser(UserModel user);
  Future<bool> deleteUser();
  Future<UserModel> loadUser();
}
