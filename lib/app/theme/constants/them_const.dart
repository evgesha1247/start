// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';

/// THEM [COLOR] CONSTATNS
abstract class _TColorConst {
  /// Color for LIGHT theme
  /// lc * : light color
  static const Color lc_primary = Color.fromARGB(255, 32, 164, 155);
  static const Color lc_mainText = Color.fromARGB(255, 0, 0, 0);

  /// ...
  /// Color for DARK theme
  /// dc * : dark color
  static const Color dc_primary = Color.fromARGB(255, 248, 51, 136);
  static const Color dc_mainText = Color.fromARGB(255, 255, 255, 255);
}

///  [TextStyle]  CONSTATNS
abstract class _TStyleTextConst {
  /// Style for LIGHT theme
  /// _lt_* : Light theme Text
  static const _lt_bodyMediumStyle =
      TextStyle(fontWeight: FontWeight.w500, color: _TColorConst.lc_mainText, height: 1);
  static const TextTheme textThemeLight = TextTheme(bodyMedium: _lt_bodyMediumStyle);

  /// ...
  /// Style for DARK theme
  /// _dt_* : Dark theme Text
  static const _dt_bodyMediumStyle =
      TextStyle(fontWeight: FontWeight.w500, height: 1, color: _TColorConst.dc_mainText);
  static const TextTheme textThemeDark = TextTheme(bodyMedium: _dt_bodyMediumStyle);
}

///  [Text and Key]  CONSTATNS
abstract class TextKey {
  static const String locKeyTheme = 'theme_mode';
  static const String nameDarkTheme = 'Dark';
  static const String nameLightTheme = 'Light';
}

///  [ThemeData]  CONSTATNS
mixin TDataConst {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: _TStyleTextConst.textThemeLight,
    primaryColor: _TColorConst.lc_primary,
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: _TStyleTextConst.textThemeDark,
    primaryColor: _TColorConst.dc_primary,
  );
}
