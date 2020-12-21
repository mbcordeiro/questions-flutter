import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

main() => runApp(new QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _selectedQuestion = 0;
  var _points = 0;
  final _questions = const [
    {
      'question': 'Qual a sua linguagem de programação favorita?',
      'answers': [
        {'option': 'Typescript', 'point': 10},
        {'option': 'Java', 'point': 5},
        {'option': 'Javascript', 'point': 3},
        {'option': 'C#', 'point': 1}
      ]
    },
    {
      'question': 'Qual a sua IDE favorita?',
      'answers': [
        {'option': 'Web Storm', 'ponit': 1},
        {'option': 'Visual Studio Code', 'point': 10},
        {'option': 'Visual Studio', 'point': 5},
        {'option': 'Intellij', 'point': 3},
      ]
    },
    {
      'question': 'Qual o seu framework favorito?',
      'answers': [
        {'option': 'AspNet Core', 'point': 10},
        {'option': 'Spring boot', 'point': 5},
        {'option': 'Angular', 'point': 3},
        {'option': 'Laravel', 'point': 1},
      ]
    }
  ];
  void _answer(int point) {
    if (flagSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
        _points = point;
      });
    }
  }

  void _quizRestart() {
    setState(() {
      _selectedQuestion = 0;
      _points = 0;
    });
  }

  bool get flagSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: flagSelectedQuestion
            ? Quiz(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                onAnswer: _answer)
            : Result(_points, _quizRestart),
      ),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  @override
  _QuestionsAppState createState() {
    return _QuestionsAppState();
  }
}
