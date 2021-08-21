import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Question({ Key? key }) : super(key: key);

  final String questext;

  Question(this.questext);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          questext,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ));
  }
}
