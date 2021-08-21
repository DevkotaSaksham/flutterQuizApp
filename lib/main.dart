// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz.dart';
import 'package:flutter_quiz/result.dart';

import './question.dart';
import './answer.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyQuizAppState();
  }
}

class MyQuizAppState extends State<MyApp> {
  var quesindex = 0;
  final questions = const [
    {
      'question': 'Which is the nearest planet to Earth?',
      'answer': [
        {'text': 'Mercury', 'score': 10},
        {'text': 'Jupiter', 'score': 0},
        {'text': 'Mars', 'score': 0},
        {'text': 'Venus', 'score': 0}
      ]
    },
    {
      'question': 'Which is the densest planet?',
      'answer': [
        {'text': 'Earth', 'score': 10},
        {'text': 'Jupiter', 'score': 0},
        {'text': 'Mars', 'score': 0},
        {'text': 'Venus', 'score': 0}
      ]
    },
    {
      'question': 'Which is the largest planet?',
      'answer': [
        {'text': 'Saturn', 'score': 0},
        {'text': 'Jupiter', 'score': 10},
        {'text': 'Mars', 'score': 0},
        {'text': 'Venus', 'score': 0}
      ]
    },
  ];
  var totalscore = 0;

  void answerquestion(int score) {
    totalscore += score;

    setState(() {
      quesindex = quesindex + 1;
    });
    print(quesindex);
  }

  void resetquiz() {
    setState(() {
      totalscore = 0;
    quesindex = 0;
    });
    
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Quiz App'),
          ),
          body: quesindex < questions.length
              ? Quiz(answerquestion, questions, quesindex)
              : Result(totalscore, resetquiz),
    ));
  }
}
