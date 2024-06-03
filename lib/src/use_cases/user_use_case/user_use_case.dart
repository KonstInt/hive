import 'dart:async';
import 'package:hive/src/features/user/domain/models/user/user_model.dart';
import 'package:hive/src/use_cases/user_use_case/models/user_model.dart';
import 'package:injectable/injectable.dart';


@singleton
class UserUseCase {
  UserModel? _user;
  UserUseCase()
      : _userStreamController = StreamController<UserModel>.broadcast(), _user = null;
  final StreamController<UserModel> _userStreamController;

  void writeUser(UserModel user) {
    _user = user;
    _userStreamController.add(user);
  }

  void closeStream() {
    _userStreamController.close();
  }

  Stream<UserModel> get broadcast => _userStreamController.stream;
  UserModel? get user => _user;
}
