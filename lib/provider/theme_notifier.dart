import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  ThemeNotifier() {
    _loadTheme();
  }

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    _saveTheme(mode);
    notifyListeners();
  }

  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String themeKey = prefs.getString('theme') ?? ThemeMode.system.toString();
    _themeMode = _themeModeFromString(themeKey);
    notifyListeners();
  }

  void _saveTheme(ThemeMode mode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', mode.toString().split('.').last);
  }

  ThemeMode _themeModeFromString(String themeString) {
    switch (themeString) {
      case 'ThemeMode.dark':
        return ThemeMode.dark;
      case 'ThemeMode.light':
        return ThemeMode.light;
      default:
        return ThemeMode.system;
    }
  }
}
