import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src_v2/features/auth/di/auth_di.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';
import 'package:hive/src_v2/features/sign_up/domain/account_registration_bloc/account_registration_bloc.dart';
import 'package:hive/src_v2/features/sign_up/domain/input_account_registration_fields/input_account_registration_fields.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class SignUpButton extends StatelessWidget {
  final AccountRegistrationBloc signUpBloc;
  final InputAccountRegistrationFieldsBloc inputFieldsBloc;

  const SignUpButton({
    required this.signUpBloc,
    required this.inputFieldsBloc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AuthContainer>.withPlaceholder(
        builder: (context, scope) {
      return BlocConsumer<AccountRegistrationBloc, AccountRegistrationState>(
        bloc: signUpBloc,
        listener: (context, signInState) {
          switch (signInState) {
            case AccountRegistrationSuccess():
              scope.authInteractor.get.authIn();
              context.go('/');
            case _:
              break;
          }
        },
        builder: (context, signInState) => BlocBuilder<
            InputAccountRegistrationFieldsBloc,
            InputAccountRegistrationFieldsState>(
          bloc: inputFieldsBloc,
          builder: (context, inputState) {
            bool buttonEnabled = false;
            bool isInProgress = false;
            String? errorText;

            switch (inputState) {
              case InputAccountRegistrationFieldsCompleted():
                buttonEnabled = true;
                break;
              case InputAccountRegistrationFieldsNotCompleted():
                buttonEnabled = false;
                break;
            }

            switch (signInState) {
              case AccountRegistrationInitial():
                isInProgress = false;
                errorText = null;
                break;
              case AccountRegistrationLoading():
                buttonEnabled = false;
                isInProgress = true;
                errorText = null;
                break;
              case AccountRegistrationSuccess():
                buttonEnabled = false;
                isInProgress = false;
                errorText = null;
                break;
              case AccountRegistrationError():
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
                      ? () => signUpBloc.add(
                            AccountRegistrationEmailEvent(
                              email: inputState.email ?? '',
                              password: inputState.password ?? '',
                            ),
                          )
                      : null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Создать аккаунт',
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
    });
  }
}
