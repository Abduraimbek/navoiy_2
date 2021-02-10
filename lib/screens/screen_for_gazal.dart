import 'package:flutter/material.dart';
import 'package:navoiy_2/datas/gazallar.dart';

class ScreenForGazal extends StatelessWidget {
  static String routeName = '/ScreenForGazal';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final ScreenForGazalArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/bg.png',
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: size.height * 0.12),
              Center(
                child: Text(
                  Gazallar.listGazallar[arguments.gazalIndex].name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  Gazallar.listGazallar[arguments.gazalIndex].text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScreenForGazalArguments {
  int gazalIndex;

  ScreenForGazalArguments(this.gazalIndex);
}
