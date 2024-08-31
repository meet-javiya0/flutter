import 'package:dice_roll_app/dice_roller.dart';
import 'package:flutter/material.dart';

const topLeftAlignment = Alignment.topLeft;
const bottomRightAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 26, 2, 80),
        color2 = const Color.fromARGB(255, 54, 11, 116);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: topLeftAlignment,
          end: bottomRightAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}