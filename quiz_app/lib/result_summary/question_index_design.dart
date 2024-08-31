import 'package:flutter/material.dart';

class QuestionIndexDesign extends StatelessWidget {
  const QuestionIndexDesign(this.isCorrectAnswer, this.questionIndex, {super.key});

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? Colors.green
            : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        (questionIndex+ 1).toString(),
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
