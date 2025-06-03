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
    _holder = SignInScopeHolder()..create();
  }

  @override
  void dispose() {
    _holder.drop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: ScopeProvider(
            holder: _holder,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: SingleChildScrollView(
                  child: SignInForm(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
