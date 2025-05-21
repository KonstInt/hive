import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';

class SignUpButton extends StatelessWidget {

  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: const Key('loginForm_createAccount_button'),
      onPressed: () {
        context.go('/sign_up');
      },
      child: Text(
        'Создать аккаунт',
        style:
            context.textStyles.bodyM.copyWith(color: context.colors.blueTooth),
      ),
    );
  }
}
