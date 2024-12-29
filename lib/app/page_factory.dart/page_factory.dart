import 'package:flutter/material.dart';
import 'package:flutter_start/app/pages/test/controller/test_controller.dart';
import 'package:flutter_start/app/pages/test/test_page.dart';
import 'package:provider/provider.dart';
import '../../main.dart';
import '../pages/main/main_page.dart';
import 'package:flutter_start/app/theme/theme_controller.dart';

class FactoryPage {
  Widget mainPage() => const MainPage();


  Widget testPage() => ChangeNotifierProvider(
        create: (_) => TestController(),
        child: const TestPage(),
      );

  Widget initThemPage() => ChangeNotifierProvider(
        create: (_) => ThemeController(),
        child: const MyMainWidget(),
      );
}
