import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/theme/themes/app_theme.dart';
import 'theme_bloc/theme_bloc.dart';
import 'di/theme_di.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class ThemeProvider extends StatefulWidget {
  final Widget child;

  const ThemeProvider({
    required this.child,
    super.key,
  });

  @override
  State<ThemeProvider> createState() => _ThemeProviderState();
}

class _ThemeProviderState extends State<ThemeProvider> {
  late final ThemeScopeHolder themeScope;

  @override
  void initState() {
    super.initState();
    themeScope = ThemeScopeHolder();
    themeScope.create();
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
            return Theme(
              data: state.isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
              child: widget.child,
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    themeScope.drop();
    super.dispose();
  }
}
