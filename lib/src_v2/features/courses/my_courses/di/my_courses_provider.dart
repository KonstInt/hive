import 'package:flutter/material.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../../auth/di/auth_di.dart' show AuthContainer;
import '../../../auth/domain/interactor/auth_interactor.dart';
import 'my_courses_di.dart';

class MyCoursesProvider extends StatelessWidget {
  final Widget child;

  const MyCoursesProvider({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AuthContainer>.withPlaceholder(
      builder: (context, scope) => _MyCourseProvider(
        authInteractor: scope.authInteractor.get,
        child: child,
      ),
    );
  }
}

class _MyCourseProvider extends StatefulWidget {
  final AuthInteractor authInteractor;
  final Widget child;
  const _MyCourseProvider({
    required this.authInteractor,
    required this.child,
  });

  @override
  State<_MyCourseProvider> createState() => __MyCourseProviderState();
}

class __MyCourseProviderState extends State<_MyCourseProvider> {
  late final MyCoursesScopeHolder holder;

  @override
  void initState() {
    super.initState();
    holder = MyCoursesScopeHolder(
      authInteractor: widget.authInteractor,
    );
    holder.create();
  }

  @override
  Widget build(BuildContext context) {
    return ScopeProvider(
      holder: holder,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    holder.drop();
    super.dispose();
  }
}
