import 'package:flutter/material.dart';
import 'package:hive/src/util/themes/extensions/build_context_ext.dart';

class SignUpAppBar extends StatelessWidget {
  const SignUpAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 5,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.create,
            size: 80,
            color: context.colors.blueTooth,
          ),
          Text(
            'Регистрация',
            style: context.textStyles.headlineB,
          ),
        ],
      ),
    );
  }
}
