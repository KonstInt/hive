import 'package:go_router/go_router.dart';
import 'package:hive/src_v2/features/create_user/presentation/create_user_page.dart';
import 'package:hive/src_v2/features/sign_in/presentation/sign_in_page.dart';
import 'package:hive/src_v2/features/sign_up/presentation/signup_page.dart';
import 'package:hive/src_v2/features/user/presentation/widget/settings_page.dart';
import 'package:hive/src_v2/pages/splash_screen.dart';

class RoutingServiceV2 {
  static final goRouter = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
        routes: [
          GoRoute(
            path: 'sign_in',
            builder: (context, state) => const SignInPage(),
          ),
          GoRoute(
            path: 'sign_up',
            builder: (context, state) => const SignUpPage(),
          ),
          GoRoute(
            path: 'create_user',
            builder: (context, state) =>
                AccountCreateUserPage(uuid: state.extra as String),
          ),
          GoRoute(
            path: 'settings',
            builder: (context, state) => const SettingsPage(),
          ),
          GoRoute(
            path: 'courses',
            builder: (context, state) => const CoursesPage(),
          ),
          // StatefulShellRoute.indexedStack(
          //   builder: (context, state, navigationShell) {
          //     return ScaffoldWithNestedNavigation(
          //         navigationShell: navigationShell);
          //   },
          //   branches: [
          //     StatefulShellBranch(
          //       routes: [
          //         GoRoute(
          //           path: 'home',
          //           pageBuilder: (context, state) => const NoTransitionPage(
          //             child: TestWidget(),
          //           ),
          //           routes: [
          //             GoRoute(
          //               path: 'course_details/:id',
          //               builder: (context, state) => CourseDetailScreen(),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //     StatefulShellBranch(
          //       routes: [
          //         GoRoute(
          //           path: 'courses',
          //           pageBuilder: (context, state) => NoTransitionPage(
          //             child: CoursesScreen(),
          //           ),
          //         ),
          //       ],
          //     ),
          //     StatefulShellBranch(
          //       routes: [
          //         GoRoute(
          //           path: 'profile',
          //           pageBuilder: (context, state) => const NoTransitionPage(
          //             child: Profile(),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    ],
  );
}
