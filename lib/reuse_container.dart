import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './variables.dart';
import './reuse_icon_text.dart';

class ReuseContainer extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  ReuseContainer(this.colour, this.cardChild);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
