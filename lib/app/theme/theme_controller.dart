import 'package:flutter/material.dart';
import 'package:flutter_start/app/theme/constants/them_const.dart';
import 'package:flutter_start/app/theme/theme_service.dart';



class ThemeController with ChangeNotifier, TDataConst {
  ThemeData _selectTheme = TDataConst.darkTheme;
  ThemeData get currentTheme => _selectTheme;


  ThemeController() {
    ThemeService.readData().then((v) {
      _selectTheme =
          v == TextKey.nameLightTheme ? TDataConst.lightTheme : TDataConst.darkTheme;
      _setThemeMode(_selectTheme);
    });
  }

String get titleThem => _selectTheme == TDataConst.darkTheme
      ? TextKey.nameDarkTheme
      : TextKey.nameLightTheme;

  Future<void> toggTheme() async {
    _selectTheme = _selectTheme == TDataConst.darkTheme
        ? TDataConst.lightTheme
        : TDataConst.darkTheme;
    _setThemeMode(_selectTheme);
  }


  Future<void> _setThemeMode(ThemeData selT) async {
    _selectTheme = selT;
    await ThemeService.saveData(titleThem);
    notifyListeners();
  }


}
