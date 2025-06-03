import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src_v2/features/auth/di/auth_di.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../features/auth/domain/bloc/auth_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AuthContainer>.withPlaceholder(
      builder: (context, scope) {
        scope.authBloc.get.add(AuthInEvent());
        return BlocListener<AuthBloc, AuthState>(
          bloc: scope.authBloc.get,
          listener: (context, state) {
            switch (state) {
              case AuthOutState():
                context.go('/sign_in');
                break;
              case AuthInState():
                context.go('/home');
                break;
              case AuthNoUserState state:
                context.go('/create_user', extra: state.uuid);
                break;
              default:
                break;
            }
          },
          child: Scaffold(
            body: Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  'assets/images/logo.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
