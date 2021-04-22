import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      return _MyAppState();
  }


}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
      { 'questionText' : 'what\'s your favorite color?', 
        'answers' : [
          {'text' : 'Black', 'score' : 10}, 
          {'text' : 'Red', 'score' : 8}, 
          {'text' : 'Greem', 'score' : 3}, 
          {'text' : 'Blue', 'score' : 1}, 
         ],
      },
      { 'questionText' : 'What\'s your favorite animal?', 
        'answers' : [
          {'text' : 'Cat', 'score' : 1},
          {'text' : 'Dog', 'score' : 10},
          {'text' : 'Lion', 'score' : 3},
          {'text' : 'Rabbit', 'score' : 5}
        ],
      },
      { 'questionText' : 'what\'s your favorite season?', 
        'answers' : [
          {'text' : 'Spring', 'score' : 1},
          {'text' : 'Fall', 'score' : 2},
          {'text' : 'Winter', 'score' : 3},
          {'text' : 'Summer', 'score' : 10},
        ],
      },
    ];

  void _restartQuiz() {
    setState( () {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {

    }
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    
    print(_questionIndex);
  }


  @override
  Widget build(BuildContext context) {

    
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My first App'), ),
      body: _questionIndex < _questions.length ? 
      Quiz(
        answerQuestion: _answerQuestion, 
        questionIndex: _questionIndex, 
        questions: _questions)
        : Result(_totalScore, _restartQuiz),
    ), );
  }
}