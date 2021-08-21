import 'package:flutter/material.dart';

class answerclass extends StatelessWidget {
  // ({ Key? key }) : super(key: key);

  final Function sethandler;
  final String answertext;

  answerclass(this.sethandler, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answertext),
        onPressed: sethandler,
      ),
    );
  }
}
