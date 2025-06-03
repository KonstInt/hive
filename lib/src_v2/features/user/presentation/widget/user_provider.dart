import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/auth/di/auth_di.dart';
import 'package:hive/src_v2/features/auth/domain/interactor/auth_interactor.dart';
import 'package:hive/src_v2/features/user/di/user_di.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class UserProvider extends StatelessWidget {
  final Widget child;

  const UserProvider({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AuthContainer>.withPlaceholder(
      builder: (context, scope) => _UserProvider(
        authInteractor: scope.authInteractor.get,
        child: child,
      ),
    );
  }
}

class _UserProvider extends StatefulWidget {
  final AuthInteractor authInteractor;
  final Widget child;

  const _UserProvider({
    required this.authInteractor,
    required this.child,
  });

  @override
  State<_UserProvider> createState() => _UserProviderState();
}

class _UserProviderState extends State<_UserProvider> {
  late final UserScopeHolder _holder;

  @override
  void initState() {
    super.initState();
    _holder = UserScopeHolder(
      authInteractor: widget.authInteractor,
    );
    _holder.create();
  }

  @override
  Widget build(BuildContext context) {
    return ScopeProvider<UserContainer>(
      holder: _holder,
      child: widget.child,
    );
  }
}
