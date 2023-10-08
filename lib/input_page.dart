import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './variables.dart';
import './reuse_icon_text.dart';
import './reuse_container.dart';

Variables variable = Variables();
final darkBlue = variable.darkBlue;
final darkGrey = variable.darkGrey;

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = darkBlue;
  Color femaleCardColor = darkBlue;

  Gender selectedGender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                child: ReuseContainer(
                    selectedGender == Gender.male ? darkGrey : darkBlue,
                    ReuseIconText(FontAwesomeIcons.mars, 'MALE')),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: ReuseContainer(
                    selectedGender == Gender.female ? darkGrey : darkBlue,
                    ReuseIconText(FontAwesomeIcons.venus, 'FEMALE')),
              ))
            ],
          )),
          Expanded(child: ReuseContainer(darkBlue, Container())),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReuseContainer(darkBlue, Container())),
              Expanded(child: ReuseContainer(darkBlue, Container()))
            ],
          )),
          Container(
            color: variable.darkPink,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
