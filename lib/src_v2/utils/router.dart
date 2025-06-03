import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/src_v2/features/auth/presentation/auth_provider.dart';
import 'package:hive/src_v2/features/courses/all_courses/presentation/screens/courses_screen.dart';
import 'package:hive/src_v2/features/create_user/presentation/create_user_page.dart';
import 'package:hive/src_v2/features/courses/my_courses/presentation/my_courses_screen.dart';
import 'package:hive/src_v2/features/sign_in/presentation/sign_in_page.dart';
import 'package:hive/src_v2/features/sign_up/presentation/signup_page.dart';
import 'package:hive/src_v2/features/theme/di/theme_di.dart';
import 'package:hive/src_v2/features/theme/presentation/theme_provider.dart';
import 'package:hive/src_v2/features/user/presentation/widget/settings_page.dart';
import 'package:hive/src_v2/features/user/presentation/widget/user_page.dart';
import 'package:hive/src_v2/features/user/presentation/widget/user_provider.dart';
import 'package:hive/src_v2/pages/splash_screen.dart';

import '../features/courses/full_screen_courses/presentation/screens/full_screen_course_screen.dart';
import '../features/test_session/screens/test_session_screen.dart';
import '../pages/app_bottom_nav/app_bottom_navigation.dart';

class RoutingServiceV2 {
  final ThemeScopeHolder themeScopeHolder;

  final _shellNavigatorKey = GlobalKey<NavigatorState>();
  late final GoRouter goRouter;

  RoutingServiceV2({
    required this.themeScopeHolder,
  }) {
    goRouter = GoRouter(
      routerNeglect: true,
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: [
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) => ThemeProvider(
            themeScopeHolder: themeScopeHolder,
            child: AuthProvider(
              child: child,
            ),
          ),
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const SplashScreen(),
            ),
            GoRoute(
                path: '/sign_in',
                builder: (context, state) => const SignInPage(),
                routes: [
                  GoRoute(
                    path: 'sign_up',
                    builder: (context, state) => const SignUpPage(),
                  ),
                ]),
            GoRoute(
              path: '/create_user',
              builder: (context, state) => AccountCreateUserPage(
                uuid: state.extra as String,
              ),
            ),
            StatefulShellRoute.indexedStack(
              builder: (context, state, navigationShell) {
                return AppBottomNavigation(
                  navigationShell: navigationShell,
                );
              },
              branches: [
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: '/home',
                      pageBuilder: (context, state) => const NoTransitionPage(
                        child: MyCoursesScreen(),
                      ),
                      routes: [
                        GoRoute(
                          name: 'fullscreen_course',
                          path: 'course/:courseID',
                          builder: (context, state) {
                            final courseID = state.pathParameters['courseID']!;
                            return FullScreenCourseScreen(
                              courseId: courseID,
                            );
                          },
                          routes: [
                            GoRoute(
                              name: 'test_session',
                              path: 'test/:testID',
                              builder: (context, state) {
                                final testID = state.pathParameters['testID']!;
                                final courseID =
                                    GoRouterState.of(context).extra! as String;
                                return TestSessionScreen(
                                  courseId: courseID,
                                  testId: testID,
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: '/courses',
                      pageBuilder: (context, state) => NoTransitionPage(
                        child: CoursesScreen(),
                      ),
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: [
                    ShellRoute(
                      builder: (context, state, child) =>
                          UserProvider(child: child),
                      routes: [
                        GoRoute(
                          path: '/profile',
                          pageBuilder: (context, state) =>
                              const NoTransitionPage(
                            child: UserPage(),
                          ),
                          routes: [
                            GoRoute(
                              path: 'settings',
                              builder: (context, state) => const SettingsPage(),
                            ),
                          ],
                        ),
                      ],
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
}
