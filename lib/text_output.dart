import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget{
  String message;
  TextOutput(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: Text(message)
    );
  }
}