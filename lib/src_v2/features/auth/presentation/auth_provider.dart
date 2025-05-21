import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/auth/di/auth_di.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class AuthProvider extends StatefulWidget {
  final AuthScopeHolder authScope;
  final Widget child;

  const AuthProvider({
    required this.authScope,
    required this.child,
    super.key,
  });

  @override
  State<AuthProvider> createState() => _AuthProviderState();
}

class _AuthProviderState extends State<AuthProvider> {
  @override
  void initState() {
    super.initState();
    widget.authScope.create();
  }

  @override
  Widget build(BuildContext context) {
    return ScopeProvider(
      holder: widget.authScope,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    widget.authScope.drop();
    super.dispose();
  }
}
