import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text/domain/blocs/users_bloc.dart';
import '../home_screen/home_screen_widget.dart';

class ScreensFactory {
  Widget makeHomeWidget() => Provider(
        create: (context) => UserBloc(),
        child: const HomeScreenWidget(),
        dispose: (context, value) => value.close(),
      );
}
