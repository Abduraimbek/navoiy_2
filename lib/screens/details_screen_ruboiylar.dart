import 'package:flutter/material.dart';
import 'package:navoiy_2/screens/screen_for_ruboiylar.dart';
import 'package:navoiy_2/widgets/book_info.dart';
import 'package:navoiy_2/widgets/chapter_card.dart';

class DetailsScreenRuboiylar extends StatelessWidget {
  static String routeName = '/DetailsScreenRuboiylar';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: size.width * .1,
                    right: size.width * .02,
                  ),
                  height: size.height * .48,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: BookInfo(
                    size: size,
                    title: 'Navoiy bobomiz\nruboiylari',
                    image: 'assets/images/kitoblar_icon.png',
                    introText: '',
                    press: () {
                      Navigator.pushNamed(
                        context,
                        ScreenForRuboiylar.routeName,
                        arguments: RuboiylarListArguments(1),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .48 - 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ChapterCard(
                        kitobNomi: '1-bo\'lim',
                        name: "BADOYI’ UL-BIDOYA",
                        chapterNumber: 1,
                        tag: 'Badoyi ul-bidoyadan ruboiylar',
                        press: () {
                          Navigator.pushNamed(
                            context,
                            ScreenForRuboiylar.routeName,
                            arguments: RuboiylarListArguments(1),
                          );
                        },
                      ),
                      ChapterCard(
                        kitobNomi: '2-bo\'lim',
                        name: "G‘AROYIB US-SIG‘AR",
                        chapterNumber: 2,
                        tag: 'G‘aroyib us-sig‘ardan ruboiylar',
                        press: () {
                          Navigator.pushNamed(
                            context,
                            ScreenForRuboiylar.routeName,
                            arguments: RuboiylarListArguments(2),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
