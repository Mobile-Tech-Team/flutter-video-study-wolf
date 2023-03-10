import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  final questionIndex;
  final answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['questionText'] as String,
      ),
      ...(questions[questionIndex]['answers']).map((answer) {
        return Answer(() => answerQuestion(answer['score']), answer['text']);
      }).toList()
    ]);
  }
}
