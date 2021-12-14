import 'package:flutter/material.dart';
import 'package:pop_aqua/screens/main_screen/main_screen.dart';

class PopAqua extends StatelessWidget {
  const PopAqua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}
