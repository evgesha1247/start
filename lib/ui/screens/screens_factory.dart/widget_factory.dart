import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text/domain/blocs/cards_bloc.dart';
import '../home_screen/home_screen_widget.dart';

class ScreensFactory {
  Widget makeHomeWidget() => BlocProvider(
        create: (context) => ObjCardBloc(),
        child: const HomeScreenWidget(),
      );
}
