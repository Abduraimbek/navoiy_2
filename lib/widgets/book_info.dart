import 'package:flutter/material.dart';
import 'package:navoiy_2/constants.dart';

class BookInfo extends StatelessWidget {
  final Size size;
  final Function press;
  final String title;
  final String introText;
  final String image;

  const BookInfo({
    Key key,
    @required this.size,
    @required this.press,
    @required this.title,
    @required this.introText,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.start,
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontSize: 28),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(top: this.size.height * .005),
                //   alignment: Alignment.centerLeft,
                //   padding: EdgeInsets.only(top: 0),
                //   child: Text(
                //     "Influence",
                //     style: Theme.of(context).textTheme.subtitle1.copyWith(
                //           fontSize: 25,
                //           fontWeight: FontWeight.bold,
                //         ),
                //   ),
                // ),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: this.size.width * .3,
                          padding: EdgeInsets.only(top: this.size.height * .02),
                          child: Text(
                            introText,
                            maxLines: 9,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColor,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: this.size.height * .015),
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: FlatButton(
                            onPressed: press,
                            child: Text(
                              "O'qish",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.transparent,
              child: Image.asset(
                image,
                height: double.infinity,
                alignment: Alignment.topRight,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
