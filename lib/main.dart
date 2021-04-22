import 'package:flutter/material.dart';
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
  final _questions = const [
      { 'questionText' : 'what\'s your favorite color?', 
        'answers' : ['Black', 'Red', 'Greem', 'Blue'],
      },
      { 'questionText' : 'What\'s your favorite animal?', 
        'answers' : ['Cat', 'Dog', 'Lion', 'Rabbit'],
      },
      { 'questionText' : 'what\'s your favorite season?', 
        'answers' : ['Spring', 'Fall', 'Winter', 'Summer'],
      },
    ];

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {

    }

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
        questions: _questions): Center(child: Text('You did it!')),
    ), );
  }
}