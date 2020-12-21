import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

main() => runApp(new QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _selectedQuestion = 0;
  final _questions = const [
    {
      'question': 'Qual a sua linguagem de programação favorita?',
      'answers': ['Typescript', 'Java', 'Javascript', 'C#']
    },
    {
      'question': 'Qual a sua IDE favorita?',
      'answers': [
        'Web Storm',
        'Visual Studio Code',
        'Visual Studio',
        'Intellij'
      ]
    },
    {
      'question': 'Qual o seu framework favorito?',
      'answers': ['AspNet Core', 'Spring boot', 'Angular', 'Laravel']
    }
  ];
  void _answer() {
    if (flagSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
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
                answer: _answer)
            : Result(),
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
