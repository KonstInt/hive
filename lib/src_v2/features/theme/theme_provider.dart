import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/theme/themes/app_theme.dart';
import '../../utils/router.dart';
import 'theme_bloc/theme_bloc.dart';
import 'di/theme_di.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class ThemedApp extends StatefulWidget {
  final Widget? child;

  const ThemedApp({
    this.child,
    super.key,
  });

  @override
  State<ThemedApp> createState() => _ThemedAppState();
}

class _ThemedAppState extends State<ThemedApp> {
  late final ThemeScopeHolder themeScope;
  late final RoutingServiceV2 routingServiceV2;
  @override
  void initState() {
    super.initState();
    themeScope = ThemeScopeHolder();
    themeScope.create();

    routingServiceV2 = RoutingServiceV2(
      themeScopeHolder: themeScope,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScopeProvider(
      holder: themeScope,
      child: ScopeBuilder<ThemeContainer>.withPlaceholder(
        builder: (context, scope) => BlocBuilder<ThemeBloc, ThemeState>(
          bloc: scope.themeBloc.get,
          buildWhen: (previous, current) =>
              previous.isDarkMode != current.isDarkMode,
          builder: (context, state) {
            return MaterialApp.router(
              theme:
                  state.isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
              title: 'Flutter Sirius',
              debugShowCheckedModeBanner: false,
              routerConfig: routingServiceV2.goRouter,
            );
          },
        ),
        placeholder: SizedBox(),
      ),
    );
  }

  @override
  void dispose() {
    themeScope.drop();
    super.dispose();
  }
}
