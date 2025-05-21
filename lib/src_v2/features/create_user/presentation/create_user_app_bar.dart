import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/theme/themes/extensions/build_context_ext.dart';

class CreateUserAppBar extends StatelessWidget {
  const CreateUserAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            size: 100,
            color: context.colors.blueTooth,
          ),
          Text(
            'Создание пользователя',
            style: context.textStyles.headlineB,
          ),
        ],
      ),
    );
  }
}
