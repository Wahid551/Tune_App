// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String? hintTextt;
  TextFieldWidget({this.hintTextt});

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      // ignore: prefer_const_constructors
      style: TextStyle(
        color: Colors.white,
      ),
      cursorColor: const Color(0xFF1DC3A7),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: widget.hintTextt,
        hintStyle: TextStyle(
          color: widget.hintTextt == 'Advair Diskus, Lyrica'
              ? Color.fromRGBO(255, 255, 255, 1)
              : Color.fromRGBO(255, 255, 255, 0.4),
          fontFamily: 'Rubrik New',
          fontSize: 17.0,
          fontWeight: FontWeight.w100,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(255, 255, 255, 0.4),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          // ignore: unnecessary_const
          borderSide: const BorderSide(
            // ignore: unnecessary_const
            color: const Color.fromRGBO(255, 255, 255, 0.4),
          ),
        ),
      ),
    );
  }
}
