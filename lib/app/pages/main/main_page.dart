import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/theme_controller.dart';
import '../../widget/theme_toggle.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    final themeControlle = context.watch<ThemeController>();
    return Scaffold(
      appBar: AppBar(
        title: ThemToggle(
          child: Text(themeControlle.selectDarkTheme ? 'dark' : 'light'),
        ),
      ),
    );
  }
}
