import 'package:flutter/widgets.dart';
import 'package:navoiy_2/main.dart';
import 'package:navoiy_2/screens/details_screen.dart';
import 'package:navoiy_2/screens/details_screen_gazallar.dart';
import 'package:navoiy_2/screens/details_screen_hikmatlar.dart';
import 'package:navoiy_2/screens/details_screen_ruboiylar.dart';
import 'package:navoiy_2/screens/home_screen.dart';
import 'package:navoiy_2/screens/navoiy_hayoti_screen.dart';
import 'package:navoiy_2/screens/pdf_view_screen.dart';
import 'package:navoiy_2/screens/screen_for_gazal.dart';
import 'package:navoiy_2/screens/screen_for_hikmatlar.dart';
import 'package:navoiy_2/screens/screen_for_ruboiylar.dart';
import 'package:navoiy_2/screens/screen_for_tuyuqlar.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  PdfViewScreen2.routeName: (context) => PdfViewScreen2(),
  DetailsScreenHikmatlar.routeName: (context) => DetailsScreenHikmatlar(),
  NavoiyHayoitScreen.routeName: (context) => NavoiyHayoitScreen(),
  ScreenForHikmatlar.routeName: (context) => ScreenForHikmatlar(),
  DetailsScreenRuboiylar.routeName: (context) => DetailsScreenRuboiylar(),
  ScreenForRuboiylar.routeName: (context) => ScreenForRuboiylar(),
  ScreenForTuyuqlar.routeName: (context) => ScreenForTuyuqlar(),
  DetailsScreenGazallar.routeName: (context) => DetailsScreenGazallar(),
  ScreenForGazal.routeName: (context) => ScreenForGazal(),
};
