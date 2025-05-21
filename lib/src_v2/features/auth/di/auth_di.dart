import 'package:hive/src_v2/features/auth/data/firebase_auth_api.dart';
import 'package:hive/src_v2/features/auth/domain/bloc/auth_bloc.dart';
import 'package:hive/src_v2/features/auth/domain/interactor/auth_interactor.dart';
import 'package:yx_scope/yx_scope.dart';

class AuthScopeHolder extends ScopeHolder<AuthContainer> {
  AuthScopeHolder({
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  });

  @override
  AuthContainer createContainer() => AuthContainer();
}

class AuthContainer extends ScopeContainer {
  AuthContainer({
    todayEarningsVisibilityRefresher,
  });

  late final authInteractor = dep(
    () => AuthInteractor(authBloc: authBloc.get),
  );

  late final authBloc = dep(
    () => AuthBloc(api: _firebaseAuthApi.get),
  );

  late final _firebaseAuthApi = dep(
    () => FirebaseAuthApi(),
  );
}
