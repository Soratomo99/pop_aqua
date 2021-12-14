import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "1",
      style: TextStyle(
        color: Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class AquaImage extends StatelessWidget {
  const AquaImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/aqua1.png",
      height: 500,
    );
  }
}
