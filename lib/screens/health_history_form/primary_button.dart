// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final String? text;
  final Function()? tap;
  PrimaryButton({Key? key, this.tap, this.text}) : super(key: key);

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: widget.tap,
      style: OutlinedButton.styleFrom(
        // ignore: prefer_const_constructors
        backgroundColor: Color(0xFF1DC3A7),
        // minimumSize: Size(size.width / 2.5, 52),
        minimumSize: const Size.fromHeight(52),
        textStyle: const TextStyle(
          fontFamily: 'Rubrik New',
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
        ),
        primary: const Color(0xFF181C1F),
      ),
      child: Text(widget.text!),
    );
  }
}
