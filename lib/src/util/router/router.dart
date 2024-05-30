import 'package:go_router/go_router.dart';
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
        builder: (context, state) => const TestWidget(),
      ),
    ],
  );
}
