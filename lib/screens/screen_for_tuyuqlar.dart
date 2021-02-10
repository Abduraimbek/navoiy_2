import 'package:flutter/material.dart';
import 'package:navoiy_2/datas/ruboiylar.dart';
import 'package:navoiy_2/datas/tuyuqlar.dart';
import 'package:navoiy_2/widgets/widget_for_ruboiy.dart';
import 'package:navoiy_2/widgets/widget_for_tuyuq.dart';

class ScreenForTuyuqlar extends StatelessWidget {
  static String routeName = '/ScreenForTuyuqlar';

  @override
  Widget build(BuildContext context) {
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
              Tuyuq.tuyuqlarList.length,
              (index) => WidgetForTuyuq(
                tuyuq: Tuyuq.tuyuqlarList[index],
                key: ValueKey<int>(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
