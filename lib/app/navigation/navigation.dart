import 'package:flutter/material.dart';
import '../page_factory.dart/page_factory.dart';


/////////////////
/// ВЫНЕСТИ  В КОНСТАНТЫ НАВИГАЦИИ
abstract class _MainNavigationRouteName {
  static const String mainPage = '/';
  static const String testPage = '/test';
}
/////////////////////




class MainNavigation {
  final mainPage = _MainNavigationRouteName.mainPage;
  final testPage = _MainNavigationRouteName.testPage;

  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        mainPage: (_) => FactoryPage().mainPage(),
        testPage: (_) => FactoryPage().testPage(),
      };

  Route? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(child: Text('ошибка навигации ! , ${settings.name}')),
      ),
    );
  }
}
