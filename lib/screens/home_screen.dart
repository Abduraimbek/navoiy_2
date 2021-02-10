import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navoiy_2/constants.dart';
import 'package:navoiy_2/datas/kitoblar.dart';
import 'package:navoiy_2/screens/details_screen.dart';
import 'package:navoiy_2/screens/details_screen_gazallar.dart';
import 'package:navoiy_2/screens/details_screen_hikmatlar.dart';
import 'package:navoiy_2/screens/details_screen_ruboiylar.dart';
import 'package:navoiy_2/screens/navoiy_hayoti_screen.dart';
import 'package:navoiy_2/screens/pdf_view_screen.dart';
import 'package:navoiy_2/screens/screen_for_tuyuqlar.dart';
import 'package:navoiy_2/widgets/reading_card_list.dart';
import 'package:navoiy_2/widgets/two_side_rounded_button_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLoading = true;
  String continueReadingCacheName = '';
  String continueReadingBookName = '';
  int continueReadingPageNumber = 0;

  @override
  void initState() {
    super.initState();
    loadContinueReading();
  }

  loadContinueReading() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      continueReadingCacheName = prefs.getString('oxirgi_uqish_title_111');
      continueReadingPageNumber = prefs.getInt(continueReadingCacheName);
      if (continueReadingPageNumber == null) {
        continueReadingPageNumber = 0;
      } else {
        continueReadingPageNumber += 1;
      }
      switch (continueReadingCacheName) {
        case "assets/kitoblar/hayrat_ul_abror_compressed.pdf":
          {
            continueReadingBookName = "Hayrat ul-abror";
          }
          break;
        case "assets/kitoblar/farhod_va_shirin_compressed.pdf":
          {
            continueReadingBookName = "Farhod va Shirin";
          }
          break;
        case "assets/kitoblar/layli_va_majnun_compressed.pdf":
          {
            continueReadingBookName = "Layli va Majnun";
          }
          break;
        case "assets/kitoblar/sabbai_sayyor_compressed.pdf":
          {
            continueReadingBookName = "Sabʼai sayyor";
          }
          break;
        case "assets/kitoblar/saddi_iskandariy_compressed.pdf":
          {
            continueReadingBookName = "Saddi Iskandariy";
          }
          break;
        default:
          {
            continueReadingBookName = "Hech qaysi asar o'qilmagan";
          }
          break;
      }
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kScaffoldBackColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/main_page_bg.png'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * 0.1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: 'Navoiy '),
                          TextSpan(
                            text: 'bobomiz',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: bestOfTheDayCard(size, context),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Bobomiz ',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          'merosi',
                          style: Theme.of(context).textTheme.headline5.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ReadingListCard(
                          title: 'Xamsa',
                          image: 'assets/images/kitoblar_icon.png',
                          size: size,
                          pressRead: () {
                            Navigator.pushNamed(
                              context,
                              DetailsScreen.routeName,
                            );
                          },
                        ),
                        ReadingListCard(
                          title: 'Hikmatlar',
                          image: 'assets/images/kitoblar_icon.png',
                          size: size,
                          pressRead: () {
                            Navigator.pushNamed(
                              context,
                              DetailsScreenHikmatlar.routeName,
                            );
                          },
                        ),
                        ReadingListCard(
                          title: 'Ruboiylar',
                          image: 'assets/images/kitoblar_icon.png',
                          size: size,
                          pressRead: () {
                            Navigator.pushNamed(
                              context,
                              DetailsScreenRuboiylar.routeName,
                            );
                          },
                        ),
                        ReadingListCard(
                          title: 'G\'azallar',
                          image: 'assets/images/kitoblar_icon.png',
                          size: size,
                          pressRead: () {
                            Navigator.pushNamed(
                              context,
                              DetailsScreenGazallar.routeName,
                            );
                          },
                        ),
                        ReadingListCard(
                          title: 'Tuyuqlar',
                          image: 'assets/images/kitoblar_icon.png',
                          size: size,
                          pressRead: () {
                            Navigator.pushNamed(
                              context,
                              ScreenForTuyuqlar.routeName,
                            );
                          },
                        ),
                        SizedBox(width: 50),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'So\'nggi o\'qiyotgan ',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          'asaringiz',
                          style: Theme.of(context).textTheme.headline5.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: continueReadingCard(size, context),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * 0.35,
              ),
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: kShadowColor,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Alisher Navoiy hayoti va ijodi',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 5),
                  Text(
                    '(1441-1501)',
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "So'z mulkining sultoni Nizomiddin Mir Alisher",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: kLightBlackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Hero(
              tag: 'navoiy_avatar_animation',
              child: Image.asset(
                'assets/images/navoiy_avatar.png',
                width: size.width * 0.37,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * 0.3,
              child: TwoSideRoundedButton2(
                text: 'O\'qib chiqish',
                radius: 24,
                press: () {
                  Navigator.pushNamed(
                    context,
                    NavoiyHayoitScreen.routeName,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container continueReadingCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * 0.35,
              ),
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: kShadowColor,
                  ),
                ],
              ),
              child: _isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '$continueReadingBookName',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'To\'xtalgan sahifa: $continueReadingPageNumber',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: kLightBlackColor),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kLightBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'assets/images/continue_reading_icon.png',
              width: size.width * 0.37,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * 0.3,
              child: TwoSideRoundedButton2(
                text: 'Davom ettirish',
                radius: 24,
                press: () async {
                  await loadContinueReading();
                  if (continueReadingCacheName != null) {
                    await Navigator.pushNamed(
                      context,
                      PdfViewScreen2.routeName,
                      arguments: PDFViewScreenArguments(
                        Kitob(
                          name: 'Sabʼai sayyor',
                          url: continueReadingCacheName,
                          cacheName: continueReadingCacheName,
                        ),
                      ),
                    );
                    await loadContinueReading();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
