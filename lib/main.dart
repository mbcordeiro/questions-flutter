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
    final List<String> questions = [
      'Qual a sua linguagem de programação favorita?',
      'Qual a sua IDE favorita?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions.elementAt(_selectedQuestion)),
            Answer('Resposta 1', _answer),
            Answer('Resposta 1', _answer),
            Answer('Resposta 1', _answer)
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
