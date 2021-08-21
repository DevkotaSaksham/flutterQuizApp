import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  int totalscore;
  final Function resetquiz;
  Result(this.totalscore, this.resetquiz);

  String get resultgetter {
    String resulttext;
    if (totalscore == 0) {
      resulttext = 'Bruh! You suck';
    }
    if (totalscore == 10) {
      resulttext = 'BOOOO! Below average';
    }
    if (totalscore == 20) {
      resulttext = 'Nice! Average';
    }
    if (totalscore == 30) {
      resulttext = 'WOHOO! Full Score';
    }
    return resulttext;
  }

  @override
  // ignore: unused_element
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultgetter,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple.shade900),
            textAlign: TextAlign.justify,
          ),
          OutlineButton(onPressed: resetquiz, child: 
          
          Text(
              'Retry it',
              style: TextStyle(fontSize: 20),
            )
          
          
          
          )
          
        ],
      ),
    );
  }
}
