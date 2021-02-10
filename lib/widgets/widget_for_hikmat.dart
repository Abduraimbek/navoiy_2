import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navoiy_2/datas/ogitlar.dart';

class WidgetForHikmat extends StatelessWidget {
  final int index;
  final Ogit ogit;

  const WidgetForHikmat({
    Key key,
    this.index,
    this.ogit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Card(
        elevation: 10,
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              '   ${ogit.ogit}',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
