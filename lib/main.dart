import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navoiy_2/constants.dart';
import 'package:navoiy_2/datas/ogitlar.dart';
import 'package:navoiy_2/routes.dart';
import 'package:navoiy_2/screens/home_screen.dart';
import 'package:navoiy_2/widgets/rounded_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // root of the application
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kBlackColor),
      ),
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  static String routeName = '/WelcomeScreen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<Ogit> ogitlar = Ogit.ogitlarList;
  String currentOgit = '';

  Random _random = Random();

  @override
  void initState() {
    currentOgit = ogitlar[_random.nextInt(9)].ogit;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Bitmap.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              currentOgit,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 10),
            Text(
              '— Alisher Navoiy',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: RoundedButton(
                text: 'kirish',
                fontSize: 20,
                press: () {
                  Navigator.popAndPushNamed(
                    context,
                    HomeScreen.routeName,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
