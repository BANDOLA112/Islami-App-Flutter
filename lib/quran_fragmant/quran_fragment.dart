import 'package:flutter/material.dart';
import 'package:islame/quran_fragmant/suraBottomBuilder.dart';
import 'package:islame/theming.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Quran extends StatefulWidget {
  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  List<String> SuraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60,bottom: 20,left: 10,right: 10),
      child: Column(
        children: [
          Expanded(
            flex: 3,
              child: Image(image: AssetImage('assets/icon/QuranIcon.png'))
          ),
          Divider(
            color: ThemingColors.maincolor,
            thickness: 3,
          ),
          Text(AppLocalizations.of(context)!.suraName,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            color: ThemingColors.maincolor,
            thickness: 3,
          ),
        Expanded(
            flex: 7,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: ThemingColors.maincolor,
                  thickness: 1,
                );
              },
              itemCount: SuraNames.length,
              itemBuilder: (context, index) {
                return Surabilder(SuraNames[index],index);
              },
            )
          )
        ],
      )
    );
  }
}
