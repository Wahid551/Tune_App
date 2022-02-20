// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tune_app/screens/health_history_form/textStyle.dart';

class BlackButtons extends StatefulWidget {
  final String? text;

  // ignore: prefer_const_constructors_in_immutables
  BlackButtons({this.text});
  // constructor

  @override
  _BlackButtonsState createState() => _BlackButtonsState();
}

class _BlackButtonsState extends State<BlackButtons> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.text!,
        style: SStyling.detail,
      ),
      SizedBox(
        height: 16,
      ),
      Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: double.infinity,
              height: 52.0,
              decoration: BoxDecoration(
                color: Color(0xFF3A4146),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Positioned(
            left: size.width / 6,
            top: size.height / 40,
            child: Text(
              'Yes'.toUpperCase(),
              style: SStyling.detail.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            // left: size.width / 2.2,
            right: size.width * 0.43,
            top: size.width * 0.02,
            child: SizedBox(
              height: 36,
              width: 1,
              child: Container(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  color: Color(0xFF181C1F),
                ),
              ),
            ),
          ),
          Positioned(
            // left: size.width / 1.6,
            right: size.width / 6,
            top: size.height / 40,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'no'.toUpperCase(),
                style: SStyling.detail.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
