import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';
import 'package:hive/src_v2/features/sign_in/domain/models/sign_in_credential.dart';

import '../../domain/bloc/input_fields/input_fields_bloc.dart';
import '../../domain/bloc/sign_in/sign_in_bloc.dart';

class LoginButton extends StatelessWidget {
  final SignInBloc signInBloc;
  final InputFieldsBloc inputFieldsBloc;

  const LoginButton({
    required this.signInBloc,
    required this.inputFieldsBloc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      bloc: signInBloc,
      listener: (context, signInState) {
        switch (signInState) {
          case SignInSuccess():
            context.go('/');
          case _:
            break;
        }
      },
      builder: (context, signInState) =>
          BlocBuilder<InputFieldsBloc, InputFieldsState>(
        bloc: inputFieldsBloc,
        builder: (context, inputState) {
          bool buttonEnabled = false;
          bool isInProgress = false;
          String? errorText;

          switch (inputState) {
            case InputFieldsCompleted():
              buttonEnabled = true;
              break;
            case InputFieldsNotCompleted():
              buttonEnabled = false;
              break;
          }

          switch (signInState) {
            case SignInInitial():
              isInProgress = false;
              errorText = null;
              break;
            case SignInLoading():
              buttonEnabled = false;
              isInProgress = true;
              errorText = null;
              break;
            case SignInSuccess():
              buttonEnabled = false;
              isInProgress = false;
              errorText = null;
              break;
            case SignInFailure():
              buttonEnabled = true;
              isInProgress = false;
              errorText = 'Неверный логин или пароль';
              break;
            case SignInError():
              buttonEnabled = true;
              isInProgress = false;
              errorText = 'Ошибка входа';
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
                    ? () => signInBloc.add(
                          SignInInitEvent(
                            credential: SignInCredential(
                              email: inputState.email ?? '',
                              password: inputState.password ?? '',
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
                    if (isInProgress) CircularProgressIndicator(),
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
