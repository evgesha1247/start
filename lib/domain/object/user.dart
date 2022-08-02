import 'package:flutter/animation.dart';

enum UserState { proshloe, current, bydyshie }

class MyObject {
  final String atribut;
  final UserState config;
  MyObject({required this.atribut, required this.config});
  MyObjectStyle get myStyle {
    switch (config) {
      case UserState.bydyshie:
        return bydyshieStyel;
      case UserState.proshloe:
        return proshloeStyel;
      case UserState.current:
        return currentStyel;
    }
  }

  static MyObjectStyle proshloeStyel = MyObjectStyle(
    bgColor: const Color(0xff873492),
    contentHeight: 200,
    contentWidth: 150,
  );
  static MyObjectStyle currentStyel = MyObjectStyle(
    bgColor: const Color.fromARGB(255, 52, 146, 132),
    contentHeight: 120,
    contentWidth: 300,
  );
  static MyObjectStyle bydyshieStyel = MyObjectStyle(
    bgColor: const Color.fromARGB(255, 146, 82, 52),
    contentHeight: 100,
    contentWidth: 140,
  );
}

class MyObjectStyle {
  final Color bgColor;
  final double contentHeight;
  final double contentWidth;
  MyObjectStyle({
    required this.bgColor,
    required this.contentHeight,
    required this.contentWidth,
  });
}
