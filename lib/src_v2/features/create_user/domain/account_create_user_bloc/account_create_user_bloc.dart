

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/create_user/data/create_user_api.dart';

import '../../../sign_up/data/sign_up_api.dart';
import '../../../user/shared/user_model.dart';

part 'account_create_user_event.dart';
part 'account_create_user_state.dart';

class AccountCreateUserBloc
    extends Bloc<AccountCreateUserEvent, AccountCreateUserState> {
  final String _uuid;
  final CreateUserApi _createUserApi;
  AccountCreateUserBloc({
    required String uuid,
    required CreateUserApi createUserApi,
  })  : _uuid = uuid,
        _createUserApi = createUserApi,
        super(
          AccountCreateUserInitial(),
        ) {
    on<AccountCreateUserEvent>(
      (event, emit) async {
        switch (event) {
          case AccountCreateNewUserEvent event:
            await _createUser(event, emit);
            break;
        }
      },
    );
  }

  Future<void> _createUser(
    AccountCreateNewUserEvent event,
    Emitter<AccountCreateUserState> emit,
  ) async {
    emit(AccountCreateUserLoading());
    try {
      await _createUserApi.createUser(event.userModel, _uuid);
      emit(AccountCreateUserSuccess());
    } catch (e) {
      emit(AccountCreateUserError(error: e.toString()));
    }
  }
}
