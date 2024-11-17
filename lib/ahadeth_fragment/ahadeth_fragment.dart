import 'package:flutter/material.dart';
import 'package:islame/ahadeth_fragment/ahadethBottonbuilder.dart';
import 'package:islame/theming.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Ahadeth extends StatefulWidget {
  const Ahadeth({super.key});

  @override
  State<Ahadeth> createState() => _QuranState();
}

class _QuranState extends State<Ahadeth> {
  final List<String> ahadethList = List.generate(50, (index) => "الحديث رقم ${index + 1}");  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 60,bottom: 20,left: 10,right: 10),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Image(image: AssetImage('assets/images/ahadethimage.png'))
            ),
            Divider(
              color: ThemingColors.maincolor,
              thickness: 3,
            ),
            Text(AppLocalizations.of(context)!.hadithName,
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
                child:ListView.separated(
                    itemBuilder: (context,index){
                      return Ahadethbottonbuilder(ahadethList[index],index);
                    },
                    separatorBuilder: (context,index){
                      return Divider(
                        thickness: 1,
                        color: ThemingColors.maincolor,
                      );
                    },
                    itemCount: ahadethList.length) ,
            )
          ],
        )
    );
  }
}
