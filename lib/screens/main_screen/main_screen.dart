import 'package:flutter/material.dart';
import 'package:pop_aqua/screens/main_screen/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent.shade100,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: const [
                  AquaImage(),
                  SizedBox(
                    width: 478,
                    child: Center(
                      child: CountWidget(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
