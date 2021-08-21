import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final List<Map<String, Object>> questions;
  final int quesindex;
  final Function answerquestion;

  Quiz(this.answerquestion, this.questions, this.quesindex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[quesindex]['question'] as String,
        ),

        // ignore: deprecated_member_use
        ...(questions[quesindex]['answer'] as List<Map<String, Object>>).map(
          (answer) {
            return answerclass(
              () => answerquestion(answer['score'] as int),
              answer['text'] as String,
            );
          },
        ).toList(),
      ],
    );
  }
}
