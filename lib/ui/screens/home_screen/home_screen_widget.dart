import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text/domain/blocs/users_bloc.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _IncButton(),
              _ValueWidget(),
              _DecButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _DecButton extends StatelessWidget {
  const _DecButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final myBloc = context.read<UserBloc>();
    return ElevatedButton(
      onPressed: () => myBloc.add(UserDecEvent()),
      child: const Icon(Icons.exposure_minus_1),
    );
  }
}

class _IncButton extends StatelessWidget {
  const _IncButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final myBloc = context.read<UserBloc>();
    return ElevatedButton(
      onPressed: () => myBloc.add(UserIncEvent()),
      child: const Icon(Icons.plus_one),
    );
  }
}

class _ValueWidget extends StatelessWidget {
  const _ValueWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final myBloc = context.read<UserBloc>();
    return StreamBuilder<UserState>(
        initialData: myBloc.state,
        stream: myBloc.stream,
        builder: (context, snapshot) {
          final value = snapshot.requireData.currentUser.age;
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text('$value'),
          );
        });
  }
}
