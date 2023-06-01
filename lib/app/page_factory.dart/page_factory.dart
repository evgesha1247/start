import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../main.dart';
import '../pages/main/main_page.dart';
import '../theme/theme_controller.dart';

class FactoryPage {
  Widget mainPage() => const MainPage();
  Widget initMainWidget() => ChangeNotifierProvider(
        create: (_) => ThemeController(),
        child: const MyMainWidget(),
      );
}
