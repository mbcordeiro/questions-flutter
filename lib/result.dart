import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int point;
  Result(this.point);
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
    return Center(
        child: Text(
      'Parabéns!',
      style: TextStyle(fontSize: 28),
    ));
  }
}
