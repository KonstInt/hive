import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/auth/di/auth_di.dart';
import 'package:hive/src_v2/features/test_session/di/test_session_scope.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../auth/domain/interactor/auth_interactor.dart';


class TestSessionProvider extends StatelessWidget {
  final String courseId;
  final String testId;
  final Widget child;
  const TestSessionProvider({
    required this.courseId,
    required this.testId,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AuthContainer>.withPlaceholder(
        builder: (context, authScope) {
      return _TestSessionProvider(
        authInteractor: authScope.authInteractor.get,
        courseId: courseId,
        testId: testId,
        child: child,
      );
    });
  }
}

class _TestSessionProvider extends StatefulWidget {
  final String courseId;
  final String testId;
  final AuthInteractor authInteractor;
  final Widget child;

  const _TestSessionProvider({
    required this.child,
    required this.authInteractor,
    required this.courseId,
    required this.testId,
  });

  @override
  State<_TestSessionProvider> createState() => _TestSessionProviderState();
}

class _TestSessionProviderState extends State<_TestSessionProvider> {
  late final TestSessionScopeHolder _scopeHolder;

  @override
  void initState() {
    super.initState();
    _scopeHolder = TestSessionScopeHolder(
      courseId: widget.courseId,
      testId: widget.testId,
      authInteractor: widget.authInteractor,
    );
    _scopeHolder.create();
  }

  @override
  Widget build(BuildContext context) {
    return ScopeProvider<TestSessionScopeContainer>(
      holder: _scopeHolder,
      child: widget.child,
    );
  }


  @override
  void dispose() {
    _scopeHolder.drop();
    super.dispose();
  }
}
