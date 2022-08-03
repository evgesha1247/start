import 'package:flutter/animation.dart';

enum ObjectState { past, current }

class MyObject {
  final ObjectState config;
  MyObject({required this.config});

  MyObjectStyle get myStyle {
    switch (config) {
      case ObjectState.past:
        return pastStyle;
      case ObjectState.current:
        return currentStyel;
    }
  }

  static MyObjectStyle pastStyle = MyObjectStyle(
    title: "past",
    bgColor: Color.fromARGB(131, 135, 52, 146),
    contentHeight: 200,
    contentWidth: 150,
  );

  static MyObjectStyle currentStyel = MyObjectStyle(
    title: "current",
    bgColor: Color.fromARGB(151, 52, 94, 146),
    contentHeight: 120,
    contentWidth: 300,
  );
}

class MyObjectStyle {
  final String title;
  final Color bgColor;
  final double contentHeight;
  final double contentWidth;
  MyObjectStyle({
    required this.title,
    required this.bgColor,
    required this.contentHeight,
    required this.contentWidth,
  });
}
