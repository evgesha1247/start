import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
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
      body: const AuthGate(),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<AuthProvider> providers = []; //<-Error here when added GoogleAuthProvider()

    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const T();
        } else {
          return SignInScreen(
            providers: providers,
          );
        }
      },
    );
  }
}

class T extends StatelessWidget {
  final String text;
  const T({super.key, this.text = 'good'});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Text(text),
      ),
    );
  }
}
