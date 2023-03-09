import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: TextStyle(
        color: Colors.black87,
      ),
    );
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: style,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
