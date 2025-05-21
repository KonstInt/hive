import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/sign_in/di/sign_in_scope.dart';
import 'package:hive/src_v2/features/sign_in/presentation/sign_in_form.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final SignInScopeHolder _holder;

  @override
  void initState() {
    super.initState();
    _holder = SignInScopeHolder();
    _holder.create();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ScopeProvider(
              holder: _holder,
              child: const SignInForm(),
            ),
          ),
        ),
      );

  @override
  void dispose() {
    _holder.drop();
    super.dispose();
  }
}
