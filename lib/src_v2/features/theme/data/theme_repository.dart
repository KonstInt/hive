import 'package:shared_preferences/shared_preferences.dart';

class ThemeRepository {
  static const _themeKey = 'theme_mode';
  SharedPreferences? _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool? getSavedTheme() => _prefs?.getBool(_themeKey);

  Future<void> saveTheme(bool isDarkMode) async {
    await _prefs?.setBool(_themeKey, isDarkMode);
  }

  void dispose() async {
    _prefs = null;
  }
}
