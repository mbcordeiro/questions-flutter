import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int point;
  final void Function() onQuizRestart;

  Result(
    this.point,
    this.onQuizRestart,
  );

  String get feedback {
    if (point < 8) {
      return 'Parabéns';
    } else if (point < 12) {
      return 'Você é bom';
    } else if (point < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            feedback,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          child: Text(
            'Reiniciar Questionário',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
          onPressed: onQuizRestart,
        )
      ],
    );
  }
}
