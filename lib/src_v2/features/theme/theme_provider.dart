import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/src_v2/features/theme/themes/app_theme.dart';
import 'theme_bloc/theme_bloc.dart';
import 'di/theme_di.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class ThemeProvider extends StatefulWidget {
  final ThemeScopeHolder themeScope;
  final Widget child;

  const ThemeProvider({
    required this.themeScope,
    required this.child,
    super.key,
  });

  @override
  State<ThemeProvider> createState() => _ThemeProviderState();
}

class _ThemeProviderState extends State<ThemeProvider> {
  @override
  void initState() {
    super.initState();
    widget.themeScope.create();
  }

  @override
  Widget build(BuildContext context) {
    return ScopeProvider(
      holder: widget.themeScope,
      child: BlocBuilder<ThemeBloc, ThemeState>(
        bloc: widget.themeScope.container.themeBloc.get,
        buildWhen: (previous, current) =>
            previous.isDarkMode != current.isDarkMode,
        builder: (context, state) {
          return Theme(
            data: state.isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
            child: widget.child,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    widget.themeScope.drop();
    super.dispose();
  }
}
