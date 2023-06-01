import 'package:flutter/material.dart';
import 'package:flutter_start/app/theme/theme_service.dart';

import '../constents/my_constents.dart';

abstract class ThemeSize {
  static const kIndent = 8.0;
}

class ThemeController with ChangeNotifier {
  bool selectDarkTheme = false;
  late ThemeData _themeData = _lightTheme;
  ThemeData get getTheme => _themeData;
  ThemeController() {
    ThemeService.readData().then((value) {
      _setThemeMode(value ?? MyConstenst.LOCOL_NAME_LIGHT_THEME);
    });
  }

  Future<void> toggTheme() async {
    selectDarkTheme = !selectDarkTheme;
    await _setThemeMode(
      _themeData == _lightTheme
          ? MyConstenst.LOCOL_NAME_DARK_THEME
          : MyConstenst.LOCOL_NAME_LIGHT_THEME,
    );
  }

  Future<void> _setThemeMode(String theme) async {
    _themeData = theme == MyConstenst.LOCOL_NAME_DARK_THEME ? _darkTheme : _lightTheme;
    await ThemeService.saveData(theme);
    notifyListeners();
  }

  static final ThemeData _lightTheme = ThemeData.light().copyWith(
    textTheme: _textThemeLight,
  );
  static final ThemeData _darkTheme = ThemeData.dark().copyWith(
    textTheme: _textThemeDark,
  );
}

const _textThemeDark = TextTheme(
  bodyMedium: TextStyle(
    fontWeight: FontWeight.w500,
    height: 1,
  ),
);
const _textThemeLight = TextTheme(
  bodyMedium: TextStyle(fontWeight: FontWeight.w500, height: 1),
);
