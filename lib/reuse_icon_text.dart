import 'package:flutter/material.dart';
import './variables.dart';

Variables variable = Variables();

class ReuseIconText extends StatelessWidget {
  final IconData customIcon;
  final String labelText;

  ReuseIconText(this.customIcon, this.labelText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: <Widget>[
        Icon(
            customIcon,
            size: 80.0
        ),
        SizedBox(height: 15.0),
        Text(
          labelText,
          style: TextStyle(
              fontSize: 18.0,
              color: variable.lightGrey
          ),
        )
      ],
    );
  }
}