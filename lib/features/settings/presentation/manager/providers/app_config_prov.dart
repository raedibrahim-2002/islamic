import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = "en";

  void changelanguage(String newLanguage) {
    if (appLanguage == newLanguage) 
    {
      return;
    } 
    appLanguage = newLanguage;
    notifyListeners();
  }
}
