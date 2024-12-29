import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
    );
  }
}

PreferredSizeWidget? myAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: const Icon(
        Icons.keyboard_arrow_left,
      ),
    ),
  );
}
