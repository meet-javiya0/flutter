import 'package:dice_roll_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 54, 11, 116),
        ),
        // body: GradientContainer.purple(), // we can also use this constructor,
      ),
    ),
  );
}