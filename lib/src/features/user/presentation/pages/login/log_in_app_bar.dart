import 'package:flutter/material.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock,
            size: 100,
            color: context.colors.blueTooth,
          ),
          Text(
            'Вход',
            style: context.textStyles.headlineB,
          ),
        ],
      ),
    );
  }
}
