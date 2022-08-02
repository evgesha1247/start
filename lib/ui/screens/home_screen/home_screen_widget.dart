import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text/domain/blocs/users_bloc.dart';

import '../../../domain/object/user.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                _IncButton(),
                SizedBox(height: 10),
                _DecButton(),
              ],
            ),
            const _ValueWidget(),
          ],
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
      child: const Text('1'),
    );
  }
}

class _IncButton extends StatelessWidget {
  const _IncButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final myBloc = context.read<UserBloc>();
    return ElevatedButton(
        onPressed: () => myBloc.add(UserIncEvent()), child: const Text('0'));
  }
}

class _ValueWidget extends StatelessWidget {
  const _ValueWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, MyObject>(
      builder: (context, state) {
        final object = context.select((UserBloc b) => b.state);
        return Container(
          color: object.myStyle.bgColor,
          height: object.myStyle.contentHeight,
          width: object.myStyle.contentWidth,
          child: Center(
            child: Text(object.atribut),
          ),
        );
      },
    );
  }
}
