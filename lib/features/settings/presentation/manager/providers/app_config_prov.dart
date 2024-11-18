import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = "en";
  ThemeMode appThemeMode = ThemeMode.dark;

  void changelanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }

  void changeTheme(ThemeMode newMode) {
    if (appThemeMode == newMode) {
      return;
    }
    appThemeMode = newMode;
    notifyListeners();
  }

  bool isDark() {
    return appThemeMode == ThemeMode.dark;
  }
}
