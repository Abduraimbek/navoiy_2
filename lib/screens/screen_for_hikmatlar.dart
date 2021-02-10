import 'package:flutter/material.dart';
import 'package:navoiy_2/datas/ogitlar.dart';
import 'package:navoiy_2/widgets/widget_for_hikmat.dart';

class ScreenForHikmatlar extends StatelessWidget {
  static String routeName = '/ScreenForHikmatlar';

  @override
  Widget build(BuildContext context) {
    final HikmatlarListArguments arguments =
        ModalRoute.of(context).settings.arguments;
    int listLengths = 0;
    int forSpot = 0;
    switch (arguments.bulim) {
      case 1:
        {
          listLengths = Ogit.ogitlarListOfAll.length ~/ 3;
          forSpot = 0;
        }
        break;
      case 2:
        {
          listLengths = Ogit.ogitlarListOfAll.length ~/ 3;
          forSpot = Ogit.ogitlarListOfAll.length ~/ 3;
        }
        break;
      case 3:
        {
          listLengths = Ogit.ogitlarListOfAll.length ~/ 3;
          forSpot = 2 * Ogit.ogitlarListOfAll.length ~/ 3;
        }
        break;
      default:
        {
          listLengths = Ogit.ogitlarListOfAll.length;
          forSpot = 0;
        }
        break;
    }
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: ListView(
            children: List.generate(
              listLengths,
              (index) => WidgetForHikmat(
                index: index + forSpot,
                ogit: Ogit.ogitlarListOfAll[index + forSpot],
                key: ValueKey<int>(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HikmatlarListArguments {
  final int bulim;

  HikmatlarListArguments(this.bulim);
}
