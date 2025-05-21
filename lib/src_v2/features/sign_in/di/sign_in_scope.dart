import 'package:hive/src_v2/features/sign_in/domain/bloc/input_fields/input_fields_bloc.dart';
import 'package:yx_scope/yx_scope.dart';

import '../data/sign_in_api.dart';
import '../domain/bloc/sign_in/sign_in_bloc.dart';

class SignInScopeHolder extends ScopeHolder<SignInContainer> {
  SignInScopeHolder({
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  });

  @override
  SignInContainer createContainer() => SignInContainer();
}

class SignInContainer extends ScopeContainer {
  SignInContainer();

  late final inputFieldsBloc = dep(
    () => InputFieldsBloc(),
  );

  late final signInBloc = dep(
    () => SignInBloc(
      signInApi: _signInApi.get,
    ),
  );

  late final _signInApi = dep(
    () => SignInApi(),
  );
}
