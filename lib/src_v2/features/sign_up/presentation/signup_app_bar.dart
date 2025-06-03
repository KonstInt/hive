import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';

class SignUpAppBar extends StatelessWidget {
  const SignUpAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.22;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: context.colors.baseText.withOpacity(0.1),
              child: Icon(
                Icons.create,
                size: 48,
                color: context.colors.baseText,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Регистрация',
              style: context.textStyles.headlineB,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
