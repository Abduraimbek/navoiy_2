import 'package:flutter/material.dart';
import 'package:navoiy_2/constants.dart';

class TwoSideRoundedButton2 extends StatelessWidget {
  final String text;
  final double radius;
  final Function press;

  const TwoSideRoundedButton2({
    Key key,
    this.text,
    this.radius,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}