import 'package:hive/src_v2/features/sign_up/domain/account_registration_bloc/account_registration_bloc.dart';
import 'package:hive/src_v2/features/sign_up/domain/input_account_registration_fields/input_account_registration_fields.dart';
import 'package:yx_scope/yx_scope.dart';

import '../data/sign_up_api.dart';

class SignUpScopeHolder extends ScopeHolder<SignUpContainer> {
  SignUpScopeHolder({
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  });

  @override
  SignUpContainer createContainer() => SignUpContainer();
}

class SignUpContainer extends ScopeContainer {
  SignUpContainer();

  late final inputFieldsBloc = dep(
    () => InputAccountRegistrationFieldsBloc(),
  );

  late final inputAccountRegistrationFieldsBloc = dep(
    () => InputAccountRegistrationFieldsBloc(),
  );

  late final signUpBloc = dep(
    () => AccountRegistrationBloc(
      api: _signInApi.get,
    ),
  );

  late final _signInApi = dep(
    () => SignUpApi(),
  );
}
