import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function() answer;

  Quiz({
    @required this.questions,
    @required this.selectedQuestion,
    @required this.answer,
  });

  bool get flagSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers =
        flagSelectedQuestion ? questions[selectedQuestion]['answers'] : null;

    return Column(
      children: <Widget>[
        Question(questions[selectedQuestion]['question']),
        ...answers.map((text) => Answer(text, answer)).toList()
      ],
    );
  }
}
