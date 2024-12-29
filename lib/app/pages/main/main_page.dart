import 'package:flutter/material.dart';
import 'package:flutter_start/app/constents/my_constents.dart';
import 'package:flutter_start/app/navigation/navigation.dart';
import 'package:provider/provider.dart';

import 'package:flutter_start/app/theme/theme_controller.dart';
import '../../widget/theme_toggle.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar().render(context),
    );
  }
}

class MyAppBar {
  Widget titleAppBar(String str) => ThemToggle(child: Text(str));
  List<Widget> actionsAppBar(context) => [
        GestureDetector(
            onTap: () => pushRoulingTest(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: MyConstenst.kIndent),
              child: Icon(Icons.keyboard_arrow_right),
            )),
      ];

  void pushRoulingTest(context) {
    final mainNavigation = MainNavigation();
    Navigator.pushNamed(context, mainNavigation.testPage);
  }

  PreferredSizeWidget? render(BuildContext context) {
    final tControl = context.watch<ThemeController>();
    return AppBar(
      elevation: 5,
      title: titleAppBar(tControl.titleThem),
      actions: actionsAppBar(context),
    );
  }
}
