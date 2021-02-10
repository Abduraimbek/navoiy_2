import 'package:flutter/material.dart';
import 'package:navoiy_2/datas/gazallar.dart';
import 'package:navoiy_2/screens/screen_for_gazal.dart';
import 'package:navoiy_2/widgets/book_info.dart';
import 'package:navoiy_2/widgets/chapter_card.dart';

class DetailsScreenGazallar extends StatelessWidget {
  static String routeName = '/DetailsScreenGazallar';

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
                    title: 'Navoiy bobomiz g\'azallari',
                    image: 'assets/images/kitoblar_icon.png',
                    introText: '',
                    press: () {
                      Navigator.pushNamed(
                        context,
                        ScreenForGazal.routeName,
                        arguments: ScreenForGazalArguments(0),
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
                        kitobNomi: '',
                        name: Gazallar.listGazallar[0].name,
                        chapterNumber: 1,
                        tag: "1-g'azal",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            ScreenForGazal.routeName,
                            arguments: ScreenForGazalArguments(0),
                          );
                        },
                      ),
                      ChapterCard(
                        kitobNomi: '',
                        name: Gazallar.listGazallar[1].name,
                        chapterNumber: 2,
                        tag: "2-g'azal",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            ScreenForGazal.routeName,
                            arguments: ScreenForGazalArguments(1),
                          );
                        },
                      ),
                      ChapterCard(
                        kitobNomi: '',
                        name: Gazallar.listGazallar[2].name,
                        chapterNumber: 2,
                        tag: "3-g'azal",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            ScreenForGazal.routeName,
                            arguments: ScreenForGazalArguments(2),
                          );
                        },
                      ),
                      ChapterCard(
                        kitobNomi: '',
                        name: Gazallar.listGazallar[3].name,
                        chapterNumber: 1,
                        tag: "4-g'azal",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            ScreenForGazal.routeName,
                            arguments: ScreenForGazalArguments(3),
                          );
                        },
                      ),
                      ChapterCard(
                        kitobNomi: '',
                        name: Gazallar.listGazallar[4].name,
                        chapterNumber: 1,
                        tag: "5-g'azal",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            ScreenForGazal.routeName,
                            arguments: ScreenForGazalArguments(4),
                          );
                        },
                      ),
                      SizedBox(
                        height: 50,
                      )
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
