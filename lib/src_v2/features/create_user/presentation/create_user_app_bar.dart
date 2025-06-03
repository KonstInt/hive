import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';

class CreateUserAppBar extends StatelessWidget {
  const CreateUserAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        height: size.height * 0.25,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: context.colors.baseText.withOpacity(0.1),
              radius: 48,
              child: Icon(
                Icons.person,
                size: 64,
                color: context.colors.baseText,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Создание пользователя',
              style: context.textStyles.headlineB,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
