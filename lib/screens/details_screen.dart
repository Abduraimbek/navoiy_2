import 'package:flutter/material.dart';
import 'package:navoiy_2/datas/kitoblar.dart';
import 'package:navoiy_2/screens/pdf_view_screen.dart';
import 'package:navoiy_2/widgets/book_info.dart';
import 'package:navoiy_2/widgets/chapter_card.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/DetailsScreenXamsa';

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
                    title: 'XAMSA',
                    image: 'assets/images/xamsa.png',
                    introText:
                        '"XAMSA" — Alisher Navoiynkng besh dostondan, yaʼni "Hayrat ulabror", "Farhod va Shirin", "Layli va Majnun", "Sabʼai sayyor", "Saddi Iskandariy"dan iborat katta asari.',
                    press: () {
                      Navigator.pushNamed(
                        context,
                        PdfViewScreen2.routeName,
                        arguments: PDFViewScreenArguments(
                          Kitob(
                            name: 'Hayrat ul-abror',
                            url:
                                'assets/kitoblar/hayrat_ul_abror_compressed.pdf',
                            cacheName:
                                'assets/kitoblar/hayrat_ul_abror_compressed.pdf',
                          ),
                        ),
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
                        kitobNomi: '1-doston',
                        name: "Hayrat ul-abror",
                        chapterNumber: 1,
                        tag: "(Yaxshi kishilarning hayratlanishi)",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            PdfViewScreen2.routeName,
                            arguments: PDFViewScreenArguments(
                              Kitob(
                                name: 'Hayrat ul-abror',
                                url:
                                    'assets/kitoblar/hayrat_ul_abror_compressed.pdf',
                                cacheName:
                                    'assets/kitoblar/hayrat_ul_abror_compressed.pdf',
                              ),
                            ),
                          );
                        },
                      ),
                      ChapterCard(
                        kitobNomi: '2-doston',
                        name: "Farhod va Shirin",
                        chapterNumber: 2,
                        tag: "(Farhod va Shirin)",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            PdfViewScreen2.routeName,
                            arguments: PDFViewScreenArguments(
                              Kitob(
                                name: 'Farhod va Shirin',
                                url:
                                    'assets/kitoblar/farhod_va_shirin_compressed.pdf',
                                cacheName:
                                    'assets/kitoblar/farhod_va_shirin_compressed.pdf',
                              ),
                            ),
                          );
                        },
                      ),
                      ChapterCard(
                        kitobNomi: '3-doston',
                        name: "Layli va Majnun",
                        chapterNumber: 3,
                        tag: "(Layli va Majnun)",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            PdfViewScreen2.routeName,
                            arguments: PDFViewScreenArguments(
                              Kitob(
                                name: 'Layli va Majnun',
                                url:
                                    'assets/kitoblar/layli_va_majnun_compressed.pdf',
                                cacheName:
                                    'assets/kitoblar/layli_va_majnun_compressed.pdf',
                              ),
                            ),
                          );
                        },
                      ),
                      ChapterCard(
                        kitobNomi: '4-doston',
                        name: "Sabʼai sayyor",
                        chapterNumber: 4,
                        tag: "(Yetti sayyora)",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            PdfViewScreen2.routeName,
                            arguments: PDFViewScreenArguments(
                              Kitob(
                                name: 'Sabʼai sayyor',
                                url:
                                    'assets/kitoblar/sabbai_sayyor_compressed.pdf',
                                cacheName:
                                    'assets/kitoblar/sabbai_sayyor_compressed.pdf',
                              ),
                            ),
                          );
                        },
                      ),
                      ChapterCard(
                        kitobNomi: '5-doston',
                        name: "Saddi Iskandariy",
                        chapterNumber: 5,
                        tag: "(Iskandar devori)",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            PdfViewScreen2.routeName,
                            arguments: PDFViewScreenArguments(
                              Kitob(
                                name: 'Saddi Iskandariy',
                                url:
                                    'assets/kitoblar/saddi_iskandariy_compressed.pdf',
                                cacheName:
                                    'assets/kitoblar/saddi_iskandariy_compressed.pdf',
                              ),
                            ),
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
