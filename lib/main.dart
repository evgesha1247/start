import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/navigation/navigation.dart';
import 'app/page_factory.dart/page_factory.dart';
import 'app/theme/theme_controller.dart';

void main() {
  runApp(FactoryPage().initMainWidget());
}

class MyMainWidget extends StatelessWidget {
  const MyMainWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final mainNavigation = MainNavigation();

    return Consumer<ThemeController>(
      builder: (context, themeModel, _) => MaterialApp(
        title: 'Mongo DB example',
        theme: themeModel.getTheme,
        routes: mainNavigation.routes,
        debugShowCheckedModeBanner: false,
        initialRoute: mainNavigation.mainPage,
        onGenerateRoute: mainNavigation.onGenerateRoute,
      ),
    );
  }
}
