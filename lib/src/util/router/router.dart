import 'package:go_router/go_router.dart';
import 'package:hive/src/features/user/presentation/pages/login/login_page.dart';
import 'package:hive/src/features/user/presentation/pages/signup/signup_page.dart';
import 'package:hive/src/features/user/presentation/pages/user_enter_controll/presentation/sign_in_control_bloc.dart';
import 'package:hive/test_screen.dart';
import 'package:injectable/injectable.dart';

@singleton
class RoutingService {
  final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: <GoRoute>[
      GoRoute(
          name: '/',
          path: '/',
          builder: (context, state) => const SignInControlWidget(),
          routes: [
            GoRoute(
                path: 'login',
                builder: (context, state) => const LoginPage(),
                routes: [
                  GoRoute(
                    path: 'sign_up',
                    builder: (context, state) => const SignUpPage(),
                  ),
                ]),
            GoRoute(
              path: 'map',
              builder: (context, state) => const TestWidget(),
            ),
          ]),
    ],

    // redirect to the login page if the user is not logged in
    // redirect: (context, state) async {
    //   final bool loggedIn = FirebaseAuth.instance.currentUser != null;
    //   final bool signingUp = state.matchedLocation == '/login/sign_up';
    //   if (!loggedIn) {
    //     if (signingUp) {
    //       return null;
    //     }
    //     else{
    //       return '/login';
    //     }
    //   }
    //   return null;
    // },
  );
}
