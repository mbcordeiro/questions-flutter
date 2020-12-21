import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function(int) onAnswer;

  Quiz({
    @required this.questions,
    @required this.selectedQuestion,
    @required this.onAnswer,
  });

  bool get flagSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
        flagSelectedQuestion ? questions[selectedQuestion]['answers'] : null;

    return Column(
      children: <Widget>[
        Question(questions[selectedQuestion]['question']),
        ...answers.map((response) {
          Answer(response['options'], () => onAnswer(response['point']));
        }).toList()
      ],
    );
  }
}
