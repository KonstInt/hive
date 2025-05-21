import 'package:hive/src_v2/features/create_user/data/create_user_api.dart';
import 'package:hive/src_v2/features/create_user/domain/account_create_user_bloc/account_create_user_bloc.dart';
import 'package:yx_scope/yx_scope.dart';

import '../domain/input_personal_fields/input_personal_fields_bloc.dart';

class CreateUserScopeHolder extends ScopeHolder<CreateUserContainer> {
  final String _uuid;

  CreateUserScopeHolder({
    required String uuid,
    super.scopeListeners,
    super.depListeners,
    super.asyncDepListeners,
  }) : _uuid = uuid;

  @override
  CreateUserContainer createContainer() => CreateUserContainer(
        uuid: _uuid,
      );
}

class CreateUserContainer extends ScopeContainer {
  final String _uuid;

  CreateUserContainer({
    required String uuid,
  }) : _uuid = uuid;

  late final inputPersonalFieldsBloc = dep(
    () => InputPersonalFieldsBloc(),
  );

  late final createUserBloc = dep(
    () => AccountCreateUserBloc(
      uuid: _uuid,
      createUserApi: _createUserApi.get,
    ),
  );

  late final _createUserApi = dep(
    () => CreateUserApi(),
  );
}
