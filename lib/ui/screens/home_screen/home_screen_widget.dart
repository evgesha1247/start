import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text/domain/blocs/cards_bloc.dart';
import '../../../domain/object/card.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: _ValueWidget()),
      floatingActionButton: _FloatingButtonWidget(),
    );
  }
}

class _FloatingButtonWidget extends StatelessWidget {
  const _FloatingButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        _IncButton(),
        SizedBox(width: 10),
        _DecButton(),
      ],
    );
  }
}

class _DecButton extends StatelessWidget {
  const _DecButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final myBloc = context.read<ObjCardBloc>();
    return FloatingActionButton(
      onPressed: () => myBloc.add(EventGoToCurrent()),
      child: const Text('curr'),
    );
  }
}

class _IncButton extends StatelessWidget {
  const _IncButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final myBloc = context.read<ObjCardBloc>();
    return FloatingActionButton(
      onPressed: () => myBloc.add(EventGoToPast()),
      child: const Text('past'),
    );
  }
}

class _ValueWidget extends StatelessWidget {
  const _ValueWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ObjCardBloc, ObjCart>(
      builder: (context, state) {
        final object = context.select((ObjCardBloc b) => b.state);
        return Container(
          color: object.cartStyle.bgColor,
          height: object.cartStyle.contentHeight,
          width: object.cartStyle.contentWidth,
          child: Center(child: Text(object.cartStyle.title)),
        );
      },
    );
  }
}
