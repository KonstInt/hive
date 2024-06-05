import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src/app.dart';
import 'package:hive/src/features/user/presentation/pages/login/login_page.dart';
import 'package:hive/src/features/user/presentation/pages/profile/profile_page.dart';
import 'package:hive/src/features/user/presentation/pages/signup/signup_page.dart';
import 'package:hive/src/features/user/presentation/pages/user_enter_controll/presentation/sign_in_control_bloc.dart';
import 'package:hive/test_screen.dart';
import 'package:hive/tmp/course_full_screen.dart';
import 'package:hive/tmp/search_courses_screen.dart';
import 'package:hive/tmp/task_screen.dart';
import 'package:injectable/injectable.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');
final _shellNavigatorCKey = GlobalKey<NavigatorState>(debugLabel: 'shellC');

@singleton
class RoutingService {
  final goRouter = GoRouter(
    initialLocation: '/',
    // * Passing a navigatorKey causes an issue on hot reload:
    // * https://github.com/flutter/flutter/issues/113757#issuecomment-1518421380
    // * However it's still necessary otherwise the navigator pops back to
    // * root on hot reload
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: '/',
        path: '/',
        builder: (context, state) => const SignInControlWidget(),
        routes: [
          GoRoute(
            path: 'task/:id',
            builder: (context, state) => const TaskScreen(),
          ),
          GoRoute(
              path: 'login',
              builder: (context, state) => const LoginPage(),
              routes: [
                GoRoute(
                  path: 'sign_up',
                  builder: (context, state) => const SignUpPage(),
                ),
              ]),
          StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return ScaffoldWithNestedNavigation(
                  navigationShell: navigationShell);
            },
            branches: [
              StatefulShellBranch(
                navigatorKey: _shellNavigatorAKey,
                routes: [
                  GoRoute(
                    path: 'home',
                    pageBuilder: (context, state) => const NoTransitionPage(
                      child: TestWidget(),
                    ),
                    routes: [
                      GoRoute(
                        path: 'course_details/:id',
                        builder: (context, state) => CourseDetailScreen(),
                      ),
                    ],
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: _shellNavigatorBKey,
                routes: [
                  // Shopping Cart
                  GoRoute(
                    path: 'courses',
                    pageBuilder: (context, state) => NoTransitionPage(
                      child: CoursesScreen(),
                    ),
                    // routes: const [
                    //   //TODO: nested routes
                    // ],
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: _shellNavigatorCKey,
                routes: [
                  // Shopping Cart
                  GoRoute(
                    path: 'profile',
                    pageBuilder: (context, state) => const NoTransitionPage(
                      child: Profile(),
                    ),
                    // routes: const [
                    //   //TODO: nested routes
                    // ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
