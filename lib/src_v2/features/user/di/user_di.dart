import 'package:hive/src_v2/features/auth/domain/interactor/auth_interactor.dart';
import 'package:hive/src_v2/features/user/data/user_api.dart';
import 'package:yx_scope/yx_scope.dart';

import '../domain/interactor/user_interactor.dart';
import '../domain/user_bloc/user_bloc.dart';

class UserScopeHolder extends ScopeHolder<UserContainer> {
  final AuthInteractor _authInteractor;

  UserScopeHolder({
    required AuthInteractor authInteractor,
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  }) : _authInteractor = authInteractor;

  @override
  UserContainer createContainer() => UserContainer(
        authInteractor: _authInteractor,
      );
}

class UserContainer extends ScopeContainer {
  final AuthInteractor _authInteractor;

  UserContainer({
    required AuthInteractor authInteractor,
  }) : _authInteractor = authInteractor;

  @override
  List<Set<AsyncDep>> get initializeQueue => [
        {
          userInteractor,
        }
      ];

  late final userInteractor = rawAsyncDep(
    () => UserInteractor(
      userBloc: userBloc.get,
      authInteractor: _authInteractor,
    ),
    init: (dep) async => dep.loadUser(),
    dispose: (dep) async {},
  );

  late final userBloc = dep(
    () => UserBloc(
      userApi: _userApi.get,
      authInteractor: _authInteractor,
    ),
  );

  late final _userApi = dep(
    () => UserApi(),
  );
}
