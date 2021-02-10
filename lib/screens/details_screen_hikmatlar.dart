import 'package:flutter/material.dart';
import 'package:navoiy_2/datas/ogitlar.dart';
import 'package:navoiy_2/screens/screen_for_hikmatlar.dart';
import 'package:navoiy_2/widgets/book_info.dart';
import 'package:navoiy_2/widgets/chapter_card.dart';

class DetailsScreenHikmatlar extends StatelessWidget {
  static String routeName = '/DetailsScreenHikmatlar';

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
                    title: 'Navoiy bobomiz\nhikmatlari',
                    image: 'assets/images/hikmatli_suzlar.png',
                    introText: '',
                    press: () {
                      Navigator.pushNamed(
                        context,
                        ScreenForHikmatlar.routeName,
                        arguments: HikmatlarListArguments(0),
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
                        name: "Hikmatlar",
                        chapterNumber: 1,
                        tag: Ogit.ogitlarList[1].ogit,
                        press: () {
                          Navigator.pushNamed(
                            context,
                            ScreenForHikmatlar.routeName,
                            arguments: HikmatlarListArguments(1),
                          );
                        },
                      ),
                      ChapterCard(
                        kitobNomi: '2-bo\'lim',
                        name: "Hikmatlar",
                        chapterNumber: 2,
                        tag: Ogit.ogitlarList[6].ogit,
                        press: () {
                          Navigator.pushNamed(
                            context,
                            ScreenForHikmatlar.routeName,
                            arguments: HikmatlarListArguments(2),
                          );
                        },
                      ),
                      ChapterCard(
                        kitobNomi: '3-bo\'lim',
                        name: "Hikmatlar",
                        chapterNumber: 3,
                        tag: Ogit.ogitlarList[3].ogit,
                        press: () {
                          Navigator.pushNamed(
                            context,
                            ScreenForHikmatlar.routeName,
                            arguments: HikmatlarListArguments(3),
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
