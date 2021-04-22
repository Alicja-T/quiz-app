import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int finalScore;
  final Function resetHandler;
  Result(this.finalScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (finalScore <= 8) {
      resultText = 'You are awesome and very likeable';
    } else if (finalScore <= 12) {
      resultText = 'You are OK!';
    } else if (finalScore <= 16) {
      resultText = 'You are kinda weird!';
    } else {
      resultText = 'You are an alien!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase, 
            style: TextStyle(
              fontSize: 36, 
              fontWeight: FontWeight.bold
              ),
            textAlign: TextAlign.center,
            ),
          FlatButton(
            child: Text('Restart Quiz!'), 
            textColor: Colors.blue,
            onPressed: resetHandler
          ),
        ],
      )
    );
  }
}