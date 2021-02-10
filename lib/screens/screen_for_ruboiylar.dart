import 'package:flutter/material.dart';
import 'package:navoiy_2/datas/ruboiylar.dart';
import 'package:navoiy_2/widgets/widget_for_ruboiy.dart';

class ScreenForRuboiylar extends StatelessWidget {
  static String routeName = '/ScreenForRuboiylar';

  @override
  Widget build(BuildContext context) {
    final RuboiylarListArguments arguments =
        ModalRoute.of(context).settings.arguments;
    int listLengths = 0;
    int forSpot = 0;
    switch (arguments.bulim) {
      case 1:
        {
          listLengths = Ruboiy.ruboiylarList1.length;
          forSpot = 0;
        }
        break;
      case 2:
        {
          listLengths = Ruboiy.ruboiylarList2.length;
          forSpot = 0;
        }
        break;
      default:
        {
          listLengths = Ruboiy.ruboiylarList1.length;
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
              (index) => WidgetForRuboiy(
                index: index + forSpot,
                ruboiy: arguments.bulim == 1
                    ? Ruboiy.ruboiylarList1[index]
                    : Ruboiy.ruboiylarList2[index],
                key: ValueKey<int>(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RuboiylarListArguments {
  final int bulim;

  RuboiylarListArguments(this.bulim);
}
