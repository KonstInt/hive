part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent {}

final class LoadThemeEvent extends ThemeEvent {}

final class ToggleThemeEvent extends ThemeEvent {}

class SetThemeEvent extends ThemeEvent {
  final bool isDarkMode;

  SetThemeEvent(this.isDarkMode);
}
