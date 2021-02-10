import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavoiyHayoitScreen extends StatelessWidget {
  static String routeName = '/NavoiyHayotiScreen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: size.height * .25,
                    child: Hero(
                      tag: 'navoiy_avatar_animation',
                      child: Image.asset(
                        'assets/images/navoiy_avatar.png',
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      'Alisher Navoiy',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: Text(
                      '(1441-1501)',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "    Alisher Navoiy (1441-1501) - buyuk shoir va mutafakkir, davlat arbobi. To‘liq ismi Nizomiddin Mir Alisher. Navoiy tahallusi ostida chig‘atoy (eki o‘zbek tili) hamda forsiyda (fors tilidagi asarlarida) ijod qilgan. G‘arbda chig‘atoy adabiyoti hisoblanmish o‘zbek adabiyotining eng yirik namoyondasi. Umuman olganda, butun turkiy xalqlari orasida u kabi yirik shaxs yo‘qdir.",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "    Navoiy yoshligidan Xurosonning (Transoksaniya) bo‘lajak hukmdori Husayn Boyqaro bilan (1469-1506) do‘st bo‘lgan. 10-12 yoshidan she’rlar yozishni boshlagan. Navoiyning zamondoshi bo‘lmish tarixchi Xondamir (1473(76) -1534) qoldirgan ma’lumotlarga ko‘ra, mashhur o‘zbek shoiri Lutfiy (1369-1465) qarigan chog‘larida bolakay Navoiy bilan ko‘rishadi va uning she’riy iqtidorini yuqori baholaydi.",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "    Hayoti davomida Navoiy  musulmon Sharqining turli mamlakatlarida bo‘ladi, o‘z davrining taniqli shaxslari bilan ko‘rishadi. O‘zining she’riy mahoratini oshiradi. 1464-1465 yillar Navoiy ijodining shinavandalari uning ilk she’riy to‘plamini (devonlari) tayyorlashadi. Bundan ko‘rinib turibdiki, o’sha davrlardayoq Navoiy mashhur shoir bo‘lib ulgurgan. 1469 yilgacha temuriylar o‘rtasidagi o‘zaro ichki nizolar tufayli Navoiy o‘zining ona shahri Hirotdan uzoqda yashashga majbur bo‘lgan.",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "    1469 yil temuriy Husayn Boyqaro Hirotni egallaydi va Xuroson hukmdori bo‘ladi. Shu vaqtdan e’tiboran, Navoiy hayotining yangi bosqichi boshlanadi. U mamlakatning siyosiy hayotida faol ishtirok etadi. Shu yili Xuroson hukmdori Navoiyni davlat muhrdori etib tayinlaydi, 1472 yil vazir bo‘ladi. Egallagan mansabi orqali u mamlakatning madaniy va ilmiy taraqqiyotida katta yordam ko‘rsatadi. Katta mulk egasiga aylanadi.",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "    1480 yil Hirot shahrida va boshqa viloyatlarda o‘z hisobidan bir nechta madrasa, 40 ta rabot (yo‘lovchilar uchun bekat), 17 ta masjid, 10 ta so‘fiylar turarjoyi (xonaqoh), 9 ta hammom, 9 ta ko‘prik va boshqalarni qurdiradi. Biroq, saroy amaldorlariga Navoiyning bu kabi faoliyati yoqmaydi va turli fitnalar orqali Husayn Boyqaro bilan munosabatlarini buzishadi.",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "    Alisher Navoiyning ijodi ulkan. Olti dostonining hajmi 60 000 ga yaqin misrani tashkil etadi. 1483-1485 yillar Navoiy o‘z ichiga besh dostonni olgan “Hamsa” asarini yaratgan: “Hayrat ul-Abror” (“Yaxshi kishilariing hayratlanishi”), “Farhod va Shirin”, “Layli va Majnun”, “Sab’ai sayyor” (“Yetti sayyora”), “Saddi Iskandariy” (“Iskandar devori”).",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "    Navoiyning “Hamsa”si mazkur janrda yaratilgan turkiy tildagi birinchi asar hisoblanadi. U - turkiy tilida ham bu kabi yirik ko‘lamdagi asar yaratilishi mumkinligini isbotlab berdi. Haqiqatan ham, Navoiy chig‘atoy tilida (eski o‘zbek tili) ham fors-tojik adabiyoti bilan bir darajada turuvchi asar yaratish mumkinligini isbotlashga harakat qilgan. Va u o‘zining besh hazinasi orqali buning uddasidan chiqqan.",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "    Navoiy musulmon Sharqining, deyarli barcha janrlarida o‘z qalamini sinab ko‘radi va o‘z ovozi, o‘z uslubi borligini ko‘rsata oladi. Sharq adabiyotida “Layli va Majnun” mavzusida 120 dan ziyod doston yaratilgan. Navoiy ham shaxsiy yondashuvi ila ushbu mavzuda doston yozadi. Dostonda Layli va Majnun o‘rtasidagi sevgi bayon qilinadi. O‘z ifodasida Navoiy odamiylik va so‘fiylik sevgisini sharhlashga harakat qilgan. O‘zining so‘fiylik qarashlarini Navoiy, shuningdek, “Farxod va Shirin”, “Hayrat ul-Abror” dostonlarida ham ifodalagan. Uning dostonlarida so‘fiylik mavzusi umumfalsafiy darajaga ko‘tarilgan.",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "    Navoiy o‘z she’riyati orqali o‘zbek (chig‘atoy) adabiyotini yangi darajaga olib chiqdi. Navoiyning nazmi mavzusining kengligi hamda janrining xilma-xilligi bo‘yicha undan oldingi o‘zbek adabiyotini ortda qoldiradi. U nazmda dostonlardagi kabi dunyoviy va diniy, so‘fiylikning dolzarb masalalarini ifoda qilgan. Navoiyning diniy asarlari ham nashr qilingan: “Arbain” (“Qirq ruboiy”), “Munadjat” (“Allohga iltijo”).",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "    So‘fiy prozaik asari “Nasaim al-muhabbat” (“Muhabbat shabadasi”)ning to‘liqroq matni nashr qilingan bo‘lib, unda 750 ta so‘fiy shayhlar haqida ma’lumot keltirilgan. Navoiy ilmiy asarlar ham yaratgan. Ular qatoriga fors va turkiy tillar qiyosi keltirilgan asarlarni kiritish mumkin: “Muhokamat al-lug‘atayn” (“Ikki til bahsi”); aruz nazariyasiga oid (she’r yozish hajmi) - “Mezon al-avzan” (“Hajm mezoni”), muammo janri nazariyasiga oid - (jumboq) “Mufradat”.",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
