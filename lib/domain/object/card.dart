import 'package:flutter/animation.dart';

enum ObjCartStatus { past, current }

class ObjCart {
  final ObjCartStatus config;
  ObjCart({required this.config});

  ObjCartStyle get cartStyle {
    switch (config) {
      case ObjCartStatus.past:
        return pastStyle;
      case ObjCartStatus.current:
        return currentStyel;
    }
  }

  static ObjCartStyle pastStyle = ObjCartStyle(
    title: "past",
    bgColor: const Color.fromARGB(131, 135, 52, 146),
    contentHeight: 200,
    contentWidth: 150,
  );

  static ObjCartStyle currentStyel = ObjCartStyle(
    title: "current",
    bgColor: const Color.fromARGB(151, 52, 94, 146),
    contentHeight: 120,
    contentWidth: 300,
  );
}

class ObjCartStyle {
  final String title;
  final Color bgColor;
  final double contentHeight;
  final double contentWidth;
  ObjCartStyle({
    required this.title,
    required this.bgColor,
    required this.contentHeight,
    required this.contentWidth,
  });
}
