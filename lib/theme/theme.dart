import 'package:flutter/material.dart';

class MyTheme with ChangeNotifier {
  bool isDark = false;
  ThemeMode currenTheme() {
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
