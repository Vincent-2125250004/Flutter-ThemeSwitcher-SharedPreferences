import 'package:flutter/material.dart';
import 'theme_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;

  ThemeProvider() {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    _isDarkMode = await ThemePreferences().getDarkMode();
    notifyListeners();

  }
  bool get isDarkMode => _isDarkMode;

  Future<void> toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    await ThemePreferences().setDarkMode(_isDarkMode);
    notifyListeners();
  }
}