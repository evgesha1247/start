import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_start/app/theme/theme_controller.dart';

class ThemToggle extends StatelessWidget {
  final Widget child;
  const ThemToggle({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeController>(
      builder: (context, themeModel, _) => InkWell(
        onTap: () => themeModel.toggTheme(),
        child: child,
      ),
    );
  }
}
