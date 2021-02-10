import 'package:flutter/material.dart';
import 'package:navoiy_2/constants.dart';
import 'package:navoiy_2/widgets/two_side_rounded_button_2.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final Function pressRead;
  final Size size;

  const ReadingListCard({
    Key key,
    this.image,
    this.title,
    this.pressRead,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      // width: 160,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: SizedBox(
              height: 40,
              // width: size.width * 0.3,
              child: TwoSideRoundedButton2(
                text: title,
                radius: 24,
                press: pressRead,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
