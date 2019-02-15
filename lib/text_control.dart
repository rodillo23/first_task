import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget{
  final String startingMessage;
  TextControl(this.startingMessage);
  @override
  State<StatefulWidget> createState() {
    return _TextControl();
  }
}

class _TextControl extends State<TextControl>{
  String message ;

  @override
  void initState() {
    super.initState();
    message = widget.startingMessage;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextOutput(message),

        RaisedButton(
          onPressed: (){
            setState(() {
              message = 'Good Bye';
            });
          },
          child: Text('Change Text'),
          textColor: Colors.white,
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }
}