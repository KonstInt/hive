import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/auth/domain/interactor/auth_interactor.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../../auth/di/auth_di.dart' show AuthContainer;
import 'full_screen_course_scope.dart';

class FullScreenCourseProvider extends StatelessWidget {
  final Widget child;
  final String courseId;
  const FullScreenCourseProvider({
    required this.child,
    required this.courseId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AuthContainer>.withPlaceholder(
      builder: (context, authScope) => _FullScreenCourseProvider(
        courseId: courseId,
        authInteractor: authScope.authInteractor.get,
        child: child,
      ),
    );
  }
}

class _FullScreenCourseProvider extends StatefulWidget {
  final AuthInteractor authInteractor;
  final Widget child;
  final String courseId;

  const _FullScreenCourseProvider({
    required this.authInteractor,
    required this.courseId,
    required this.child,
  });

  @override
  State<_FullScreenCourseProvider> createState() =>
      __FullScreenCourseProviderState();
}

class __FullScreenCourseProviderState extends State<_FullScreenCourseProvider> {
  late final FullScreenCourseScopeHolder holder;

  @override
  void initState() {
    super.initState();
    holder = FullScreenCourseScopeHolder(
      courseId: widget.courseId,
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
