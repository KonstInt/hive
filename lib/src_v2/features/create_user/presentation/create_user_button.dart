import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';
import 'package:hive/src_v2/features/user/shared/user_model.dart';

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
    return BlocConsumer<AccountCreateUserBloc, AccountCreateUserState>(
      bloc: accountCreateUserBloc,
      listener: (context, signInState) {
        switch (signInState) {
          case AccountCreateUserSuccess():
            context.go('/');
          case _:
            break;
        }
      },
      builder: (context, signInState) =>
          BlocBuilder<InputPersonalFieldsBloc, InputPersonalFieldsState>(
        bloc: inputPersonalFieldsBloc,
        builder: (context, inputState) {
          bool buttonEnabled = false;
          bool isInProgress = false;
          String? errorText;

          switch (inputState) {
            case InputPersonalFieldsCompleted():
              buttonEnabled = true;
              break;
            case InputPersonalFieldsNotCompleted():
              buttonEnabled = false;
              break;
          }

          switch (signInState) {
            case AccountCreateUserInitial():
              isInProgress = false;
              errorText = null;
              break;
            case AccountCreateUserLoading():
              buttonEnabled = false;
              isInProgress = true;
              errorText = null;
              break;
            case AccountCreateUserSuccess():
              buttonEnabled = false;
              isInProgress = false;
              errorText = null;
              break;
            case AccountCreateUserError():
              buttonEnabled = true;
              isInProgress = false;
              errorText = 'Ошибка!';
              break;
          }

          return Column(
            children: [
              if (errorText != null)
                Text(
                  errorText,
                  style: context.textStyles.bodyB,
                ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: context.colors.inverseText,
                  disabledBackgroundColor: context.colors.disabled,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: buttonEnabled
                    ? () => accountCreateUserBloc.add(
                          AccountCreateNewUserEvent(
                            userModel: UserModel(
                              name: inputPersonalFieldsBloc.state.name ?? '',
                              secondName:
                                  inputPersonalFieldsBloc.state.secondName ??
                                      '',
                              nickname:
                                  inputPersonalFieldsBloc.state.nickname ?? '',
                            ),
                          ),
                        )
                    : null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Войти',
                      style: context.textStyles.bodyM,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    if (isInProgress)
                      CircularProgressIndicator(
                        padding: EdgeInsets.all(
                          8,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
