import 'package:e_learning/utils/user_preferences.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  get getTheme => _themeMode;
  setTheme(themeMode) {
    _themeMode = themeMode;

    UserPreferences.setMode(themeMode.toString());
    notifyListeners();
  }
}
