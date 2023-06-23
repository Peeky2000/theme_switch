import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier {
  ThemeMode _mode;
  ThemeMode get mode => _mode;
  ThemeModel({ThemeMode mode = ThemeMode.light}) : _mode = mode;

  void toggleMode(bool check) {
    _mode = !check ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}