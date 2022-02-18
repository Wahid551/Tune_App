// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tune_app/screens/health_history_form/black_button.dart';
import 'package:tune_app/screens/health_history_form/button.dart';
import 'package:tune_app/screens/health_history_form/primary_button.dart';
import 'package:tune_app/screens/health_history_form/symtomps_button.dart';
import 'package:tune_app/screens/health_history_form/textFIeld.dart';
import 'package:tune_app/screens/health_history_form/textStyle.dart';

enum Option { yes, no }
enum Opt { yes, no }

class HealthHistoryForm extends StatefulWidget {
  const HealthHistoryForm({Key? key}) : super(key: key);

  @override
  _HealthHistoryFormState createState() => _HealthHistoryFormState();
}

class _HealthHistoryFormState extends State<HealthHistoryForm> {
  Option option = Option.yes;
  Opt optt = Opt.yes;
  bool vall = true;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  bool value6 = false;
  bool value7 = false;
  bool value8 = false;

  Widget checkBoxx(String txt, int num) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: Checkbox(
            side: BorderSide(
              width: 0.5,
              color: Color.fromRGBO(
                255,
                255,
                246,
                1,
              ),
            ),
            activeColor: Color(0xFF1DC3A7),
            value: num == 1
                ? value1
                : num == 2
                    ? value2
                    : num == 3
                        ? value3
                        : num == 4
                            ? value4
                            : num == 5
                                ? value5
                                : num == 6
                                    ? value6
                                    : num == 7
                                        ? value7
                                        : value8,
            onChanged: (value) {
              setState(() {
                if (num == 1) {
                  value1 = value!;
                } else if (num == 2) {
                  value2 = value!;
                } else if (num == 3) {
                  value3 = value!;
                } else if (num == 4) {
                  value4 = value!;
                } else if (num == 5) {
                  value5 = value!;
                } else if (num == 6) {
                  value6 = value!;
                } else if (num == 7) {
                  value7 = value!;
                } else if (num == 8) {
                  value8 = value!;
                }
              });
            },
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          txt,
          style: SStyling.checkBoxStyle,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFF181C1F),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 24.0,
            right: 24.0,
            top: 15,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Positioned(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xFFE4E4E4),
                          size: 25,
                        ),
                      ),
                    ),
                    Positioned(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.close,
                          color: Color(0xFFE4E4E4),
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    bottom: 20,
                  ),
                  child: Text(
                    'HEALTH HISTORY FORM',
                    style: SStyling.titleStyle,
                  ),
                ),
                Text(
                  'Health history 3/4',
                  style: SStyling.checkBoxStyle.copyWith(
                    color: Color(0xFFE4E4E4),
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: double.infinity,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Color(0xFF3A4146),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: size.width / 1.6,
                          height: 12,
                          decoration: BoxDecoration(
                              color: Color(0xFF1DC3A7),
                              // shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(50),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.teal.shade900,
                                  blurRadius: 8.0,
                                  offset: Offset(6, 4),
                                  // spreadRadius: 0.1,
                                  // spreadRadius: 0.3,
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'Have you had any injuries or surgeries in the past that may influence today’s treatment?',
                    style: SStyling.rubrikNew.copyWith(
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: OutlineeButton(
                          txt: 'yes',
                          onPressed: () {
                            setState(() {
                              optt = Opt.yes;
                            });
                          },
                          bckcolor: optt == Opt.yes
                              ? Color(0xFF182B2B)
                              : Color(0xFF3A4146),
                          forgrndcolor: optt == Opt.yes
                              ? Color(0xFF1DC3A7)
                              : Color(0xFFE4E4E4),
                          bordercolor: optt == Opt.yes
                              ? Color(0xFF1DC3A7)
                              : Color(0xFF3A4146),
                        ),
                      ),
                      Expanded(
                        child: OutlineeButton(
                          txt: 'no',
                          onPressed: () {
                            setState(() {
                              optt = Opt.no;
                            });
                          },
                          bckcolor: optt == Opt.no
                              ? Color(0xFF182B2B)
                              : Color(0xFF3A4146),
                          forgrndcolor: optt == Opt.no
                              ? Color(0xFF1DC3A7)
                              : Color(0xFFE4E4E4),
                          bordercolor: optt == Opt.no
                              ? Color(0xFF1DC3A7)
                              : Color(0xFF3A4146),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.0),
                  child: TextFieldWidget(hintTextt: 'Please explain'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Any of the following health conditions that you currently have?',
                        style: SStyling.detail,
                      ),
                      Text(
                        'Please answer honestly, as massage may not be indicated for these conditions.',
                        style: SStyling.detail
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      checkBoxx('Blood clots', 1),
                      SizedBox(
                        height: 18,
                      ),
                      checkBoxx('Infections', 2),
                      SizedBox(
                        height: 18,
                      ),
                      checkBoxx('Pitted edema', 3),
                      SizedBox(
                        height: 18,
                      ),
                      checkBoxx('Congestive heart failure', 4),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFieldWidget(hintTextt: 'Any other?'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text(
                    'How do you feel today?',
                    style: SStyling.detail,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      checkBoxx('Ache', 5),
                      SizedBox(
                        height: 18,
                      ),
                      checkBoxx('Pain and stiffness', 6),
                      SizedBox(
                        height: 18,
                      ),
                      checkBoxx('Myofascial pain syndrome', 7),
                      SizedBox(
                        height: 18,
                      ),
                      checkBoxx('Poor circulation', 8),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFieldWidget(hintTextt: 'Any other?'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text(
                    'Do symptoms like sleep, exercise, work, childcare, interfere with your activities of daily living?',
                    style: SStyling.detail,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: OutlineeeButton(
                          txt: 'yes',
                          onPressed: () {
                            setState(() {
                              option = Option.yes;
                            });
                          },
                          bckcolor: option == Option.yes
                              ? Color(0xFF182B2B)
                              : Color(0xFF3A4146),
                          forgrndcolor: option == Option.yes
                              ? Color(0xFF1DC3A7)
                              : Color(0xFFE4E4E4),
                          bordercolor: option == Option.yes
                              ? Color(0xFF1DC3A7)
                              : Color(0xFF3A4146),
                        ),
                      ),
                      Expanded(
                        child: OutlineeeButton(
                          txt: 'no',
                          onPressed: () {
                            setState(() {
                              option = Option.no;
                            });
                          },
                          bckcolor: option == Option.no
                              ? Color(0xFF182B2B)
                              : Color(0xFF3A4146),
                          forgrndcolor: option == Option.no
                              ? Color(0xFF1DC3A7)
                              : Color(0xFFE4E4E4),
                          bordercolor: option == Option.no
                              ? Color(0xFF1DC3A7)
                              : Color(0xFF3A4146),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFieldWidget(hintTextt: 'Explain how?'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text(
                    'List the medications you currently take?',
                    style: SStyling.detail,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFieldWidget(
                    hintTextt: 'Advair Diskus, Lyrica',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: BlackButtons(
                    text: 'Are you wearing contacts?',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: BlackButtons(
                    text: 'Are you wearing dentures?',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: BlackButtons(
                    text: 'Are you wearing a hairpiece?',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: BlackButtons(
                    text: 'Are you pregnant?',
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        color: Color(0xFF181C1F),
        padding: EdgeInsets.all(10),
        child: PrimaryButton(
          tap: () {},
          text: 'Next',
        ),
      ),
    );
  }
}
