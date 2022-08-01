import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text/ui/screens/home_screen/home_model_widget.dart';

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
    final model = context.read<HomeModelWidget>();
    return ElevatedButton(
      onPressed: model.dec1,
      child: const Icon(Icons.exposure_minus_1),
    );
  }
}

class _IncButton extends StatelessWidget {
  const _IncButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final model = context.read<HomeModelWidget>();
    return ElevatedButton(
      onPressed: model.inc1,
      child: const Icon(Icons.plus_one),
    );
  }
}

class _ValueWidget extends StatelessWidget {
  const _ValueWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final value = context.watch<HomeModelWidget>().getValue();
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Text(value),
    );
  }
}
