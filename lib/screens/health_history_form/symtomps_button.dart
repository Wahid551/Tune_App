// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class OutlineeeButton extends StatefulWidget {
  final Color bckcolor;
  final Color forgrndcolor;
  final Color bordercolor;
  final Function() onPressed;
  final String txt;

  // ignore: use_key_in_widget_constructors
  OutlineeeButton(
      {required this.onPressed,
      required this.bckcolor,
      required this.bordercolor,
      required this.forgrndcolor,
      required this.txt});

  @override
  _OutlineeeButtonState createState() => _OutlineeeButtonState();
}

class _OutlineeeButtonState extends State<OutlineeeButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
        child: Text(widget.txt.toUpperCase()),
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(
            Size.fromHeight(52),
          ),
          backgroundColor: MaterialStateProperty.all(
            widget.bckcolor,
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
          foregroundColor: MaterialStateProperty.all<Color>(
            widget.forgrndcolor,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
              side: BorderSide(
                color: widget.bordercolor,
              ),
            ),
          ),
        ),
        onPressed: widget.onPressed);
  }
}
