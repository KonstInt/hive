import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/sign_in/di/sign_in_scope.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import 'sign_in_app_bar.dart';
import 'widget/email_input.dart';
import 'widget/password_input.dart';
import 'widget/sign_in_button.dart';
import 'widget/sign_up_button.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  late final TextEditingController emailInputController;
  late final TextEditingController passwordInputController;

  @override
  void initState() {
    super.initState();
    emailInputController = TextEditingController();
    passwordInputController = TextEditingController();
  }

  @override
  void dispose() {
    emailInputController.dispose();
    passwordInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<SignInContainer>.withPlaceholder(
      builder: (context, scope) {
        final inputBloc = scope.inputFieldsBloc.get;
        final signInBloc = scope.signInBloc.get;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SignInAppBar(),
              const SizedBox(height: 32),
              EmailInput(
                controller: emailInputController,
                inputFieldsBloc: inputBloc,
              ),
              const SizedBox(height: 16),
              PasswordInput(
                controller: passwordInputController,
                inputFieldsBloc: inputBloc,
              ),
              const SizedBox(height: 24),
              LoginButton(
                signInBloc: signInBloc,
                inputFieldsBloc: inputBloc,
              ),
              const SizedBox(height: 16),
              const SignUpButton(),
            ],
          ),
        );
      },
    );
  }
}
