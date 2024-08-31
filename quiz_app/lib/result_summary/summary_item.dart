import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/result_summary/question_index_design.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        QuestionIndexDesign(
          data['correct_answer'] == data['user_answer'],
          data['question_index'] as int,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              right: 0,
              bottom: 20,
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Correct Answer: ${data['correct_answer']}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 242, 144, 255),
                  ),
                ),
                Text(
                  'Your Answer: ${data['user_answer']}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 82, 191, 255),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
