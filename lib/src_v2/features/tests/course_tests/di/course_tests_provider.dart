import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:hive/src_v2/features/auth/di/auth_di.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../../auth/domain/interactor/auth_interactor.dart';
import 'course_tests_scope.dart';

class CourseTestsProvider extends StatelessWidget {
  final Widget child;
  final String courseId;

  const CourseTestsProvider({
    required this.child,
    required this.courseId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AuthContainer>.withPlaceholder(
      builder: (context, scope) {
        return _CourseTestsProvider(
          authInteractor: scope.authInteractor.get,
          courseId: courseId,
          child: child,
        );
      },
    );
  }
}

class _CourseTestsProvider extends StatefulWidget {
  final AuthInteractor authInteractor;
  final String courseId;
  final Widget child;

  const _CourseTestsProvider({
    required this.authInteractor,
    required this.courseId,
    required this.child,
  });

  @override
  State<_CourseTestsProvider> createState() => _CourseTestsProviderState();
}

class _CourseTestsProviderState extends State<_CourseTestsProvider> {
  late final CourseTestsScopeHolder holder;

  @override
  void initState() {
    super.initState();
    holder = CourseTestsScopeHolder(
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
