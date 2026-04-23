import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService {
  static const _keyTheme = 'isDarkMode';

  final ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.light);

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool(_keyTheme) ?? false;
    themeMode.value = isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = themeMode.value != ThemeMode.dark;
    themeMode.value = isDark ? ThemeMode.dark : ThemeMode.light;
    await prefs.setBool(_keyTheme, isDark);
  }
}
