import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() => runApp(new QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
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

    List<String> answers = questions[_selectedQuestion]['answers'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_selectedQuestion]['question']),
            ...answers.map((text) => Answer(text, _answer)).toList(),
          ],
        ),
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
