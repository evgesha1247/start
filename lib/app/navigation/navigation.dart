import 'package:flutter/material.dart';
import '../page_factory.dart/page_factory.dart';

abstract class _MainNavigationRouteName {
   static const mainPage = '/';
}

class MainNavigation {
  final mainPage = _MainNavigationRouteName.mainPage;

  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
          mainPage: (_) =>  FactoryPage().mainPage(),
      };

  Route? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(child: Text('ошибка навигации ! , ${settings.name}')),
      ),
    );
  }
}
