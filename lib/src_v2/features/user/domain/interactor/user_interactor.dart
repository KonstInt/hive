// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:hive/src_v2/features/auth/domain/interactor/auth_interactor.dart';
import 'package:hive/src_v2/features/user/domain/user_bloc/user_bloc.dart';
import 'package:hive/src_v2/features/user/shared/user_model.dart';

class UserInteractor {
  final UserBloc _userBloc;
  final AuthInteractor _authInteractor;
  UserInteractor({
    required UserBloc userBloc,
    required AuthInteractor authInteractor,
  })  : _userBloc = userBloc,
        _authInteractor = authInteractor;

  void loadUser() {
    final uuid = _authInteractor.getCurrentUuid();
    _userBloc.add(
      UserLoadEvent(uuid: uuid),
    );
  }

  void updateUser({required UserModel userModel}) {
    final uuid = _authInteractor.getCurrentUuid();
    _userBloc.add(
      UserUpdateEvent(userModel: userModel),
    );
  }

  void signOut() {
    _authInteractor.authOut();
  }
}
