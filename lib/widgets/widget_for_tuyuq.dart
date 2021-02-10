import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navoiy_2/datas/tuyuqlar.dart';

class WidgetForTuyuq extends StatelessWidget {
  final Tuyuq tuyuq;

  const WidgetForTuyuq({
    Key key,
    this.tuyuq,
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
              '${tuyuq.tuyuq}',
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
