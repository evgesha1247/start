import 'package:flutter/material.dart';
import 'package:flutter_start/app/theme/theme_controller.dart';
import 'package:provider/provider.dart';

import 'app/navigation/navigation.dart';
import 'app/page_factory.dart/page_factory.dart';

void main() => runApp(FactoryPage().initThemPage());


class MyMainWidget extends StatelessWidget {
  const MyMainWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final mainNavigation = MainNavigation();
    return Consumer<ThemeController>(
      builder: (context, themeModel, _) => MaterialApp(
        theme: themeModel.currentTheme,
        routes: mainNavigation.routes,
        debugShowCheckedModeBanner: false,
        initialRoute: mainNavigation.mainPage,
        onGenerateRoute: mainNavigation.onGenerateRoute,
      ),
    );
  }
}
