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
          listener: (context, state) {
            if (state is AccountRegistrationSuccess) {
              scope.authInteractor.get.authIn();
              context.go('/');
            }
          },
          builder: (context, state) {
            return BlocBuilder<InputAccountRegistrationFieldsBloc,
                InputAccountRegistrationFieldsState>(
              bloc: inputFieldsBloc,
              builder: (context, inputState) {
                final isComplete =
                    inputState is InputAccountRegistrationFieldsCompleted;
                final isLoading = state is AccountRegistrationLoading;
                final isError = state is AccountRegistrationError;

                final isEnabled = isComplete && !isLoading;
                final email = inputState.email ?? '';
                final password = inputState.password ?? '';

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (isError)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Text(
                          'Ошибка регистрации',
                          style: context.textStyles.bodyB
                              .copyWith(color: context.colors.mario),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ElevatedButton(
                      onPressed: isEnabled
                          ? () => signUpBloc.add(
                                AccountRegistrationEmailEvent(
                                  email: email,
                                  password: password,
                                ),
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
                              'Создать аккаунт',
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
