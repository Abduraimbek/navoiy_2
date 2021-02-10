import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navoiy_2/datas/ruboiylar.dart';

class WidgetForRuboiy extends StatelessWidget {
  final int index;
  final Ruboiy ruboiy;

  const WidgetForRuboiy({
    Key key,
    this.index,
    this.ruboiy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 25,
              bottom: 25,
              left: 25,
            ),
            child: Text(
              '${ruboiy.ruboiy}',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
        Center(
          child: Text('********'),
        )
      ],
    );
  }
}
