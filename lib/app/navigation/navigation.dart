import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import '../page_factory.dart/page_factory.dart';

abstract class _MainNavigationRouteName {
  static const mainPage = '/';
  static const authPage = 'auth';
}
final providers = [EmailAuthProvider()];

class MainNavigation {
  final mainPage = _MainNavigationRouteName.mainPage;
  final authPage = _MainNavigationRouteName.authPage;

  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        mainPage: (_) => Prof(),
        // FactoryPage().mainPage(),
        authPage: (_) => Auth(),
      };

  Route? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(child: Text('ошибка навигации ! , ${settings.name}')),
      ),
    );
  }
}


class Prof extends StatelessWidget {
  const Prof({super.key});
  @override
  Widget build(BuildContext context) {
    final providers = [EmailAuthProvider()];
    return Scaffold(
      body: ProfileScreen(
        providers: providers,
        actions: [
          SignedOutAction((context) {
            Navigator.pushReplacementNamed(context, 'auth');
          }),
        ],
      ),
    );
  }
}

class Auth extends StatelessWidget {
  const Auth({super.key});
  @override
  Widget build(BuildContext context) {
    final providers = [EmailAuthProvider()];
    return Scaffold(
      body: SignInScreen(
        providers: providers,
        actions: [
          AuthStateChangeAction<SignedIn>((context, state) {
            Navigator.pushReplacementNamed(context, '/profile');
          }),
        ],
      ),
    );
  }
}
