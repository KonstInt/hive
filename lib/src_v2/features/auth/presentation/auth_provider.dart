import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/auth/di/auth_di.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class AuthProvider extends StatefulWidget {
  final Widget child;

  const AuthProvider({
    required this.child,
    super.key,
  });

  @override
  State<AuthProvider> createState() => _AuthProviderState();
}

class _AuthProviderState extends State<AuthProvider> {
  late final AuthScopeHolder _authScope = AuthScopeHolder();
  @override
  void initState() {
    super.initState();
    _authScope.create();
  }

  @override
  Widget build(BuildContext context) {
    return ScopeProvider<AuthContainer>(
      holder: _authScope,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _authScope.drop();
    super.dispose();
  }
}
