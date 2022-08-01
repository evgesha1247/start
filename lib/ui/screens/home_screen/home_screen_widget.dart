import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text/ui/screens/home_screen/home_model_widget.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final model = context.read<HomeModelWidget>();
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: model.inc1,
              child: const Icon(Icons.plus_one),
            ),
            const ValueWidget(),
            ElevatedButton(
              onPressed: model.dec1,
              child: const Icon(Icons.exposure_minus_1),
            ),
          ],
        ),
      ),
    );
  }
}

class ValueWidget extends StatelessWidget {
  const ValueWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final value = context.watch<HomeModelWidget>().getValue();
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Text(value),
    );
  }
}
