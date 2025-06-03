import 'package:flutter/material.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';
import '../di/theme_di.dart';

class ThemeProvider extends StatelessWidget {
  final Widget child;
  final ThemeScopeHolder themeScopeHolder;

  const ThemeProvider({
    super.key,
    required this.child,
    required this.themeScopeHolder,
  });

  @override
  Widget build(BuildContext context) {
    return ScopeProvider(
      holder: themeScopeHolder,
      child: child,
    );
  }
}
