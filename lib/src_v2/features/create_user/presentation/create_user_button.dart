import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src_v2/features/auth/di/auth_di.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';
import 'package:hive/src_v2/features/user/shared/user_model.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../domain/account_create_user_bloc/account_create_user_bloc.dart';
import '../domain/input_personal_fields/input_personal_fields_bloc.dart';

class CreateUserButton extends StatelessWidget {
  final AccountCreateUserBloc accountCreateUserBloc;
  final InputPersonalFieldsBloc inputPersonalFieldsBloc;

  const CreateUserButton({
    required this.accountCreateUserBloc,
    required this.inputPersonalFieldsBloc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AuthContainer>.withPlaceholder(
      builder: (context, scope) {
        return BlocConsumer<AccountCreateUserBloc, AccountCreateUserState>(
          bloc: accountCreateUserBloc,
          listener: (context, state) {
            if (state is AccountCreateUserSuccess) {
              scope.authInteractor.get.authIn();
              context.go('/');
            }
          },
          builder: (context, userState) {
            return BlocBuilder<InputPersonalFieldsBloc,
                InputPersonalFieldsState>(
              bloc: inputPersonalFieldsBloc,
              builder: (context, inputState) {
                final isCompleted = inputState is InputPersonalFieldsCompleted;
                final isLoading = userState is AccountCreateUserLoading;
                final hasError = userState is AccountCreateUserError;

                final userModel = UserModel(
                  name: inputState.name ?? '',
                  secondName: inputState.secondName ?? '',
                  nickname: inputState.nickname ?? '',
                );

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (hasError)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Text(
                          'Ошибка при создании пользователя',
                          style: context.textStyles.bodyB
                              .copyWith(color: context.colors.mario),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ElevatedButton(
                      onPressed: isCompleted && !isLoading
                          ? () => accountCreateUserBloc.add(
                                AccountCreateNewUserEvent(userModel: userModel),
                              )
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.colors.baseText,
                        foregroundColor: context.colors.inverseText,
                        disabledBackgroundColor: context.colors.disabled,
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Opacity(
                            opacity: isLoading ? 0 : 1,
                            child: Text(
                              'Войти',
                              style: context.textStyles.bodyM,
                            ),
                          ),
                          if (isLoading)
                            const SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}
