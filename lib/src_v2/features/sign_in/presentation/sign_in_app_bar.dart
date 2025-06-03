import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';

class SignInAppBar extends StatelessWidget {
  const SignInAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 48,
              backgroundColor: context.colors.baseText.withOpacity(0.1),
              child: Icon(
                Icons.lock_outline_rounded,
                size: 60,
                color: context.colors.baseText,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Вход',
              style: context.textStyles.headlineB,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
