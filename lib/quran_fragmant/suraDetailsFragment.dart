import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame/quran_fragmant/ayatBuilder.dart';
import 'package:islame/quran_fragmant/suraBottomBuilder.dart';
import 'package:islame/theming.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Suradetails extends StatefulWidget {
  static const String routeName='suraDetails';

  @override
  State<Suradetails> createState() => _SuradetailsState();
}

class _SuradetailsState extends State<Suradetails> {
  String SuraContent = "";

  List<String> SuraLines = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArge arge = ModalRoute.of(context)!.settings.arguments as SuraDetailsArge;
    String sura=arge.fileName;
    suraFile(sura);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle:true,
          title: Text(
            AppLocalizations.of(context)!.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body:  Container(
          margin: EdgeInsets.only(top: 20,bottom: 50,left: 20,right: 20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${arge.suraName}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.play_circle),
                ],
              ),
              Divider(
                thickness: 2,
                color: ThemingColors.maincolor,
              ),
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context,index){
                  return Ayat(SuraLines[index]);
                }, itemCount:SuraLines.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

void suraFile(String filename)async{
  SuraContent=await rootBundle.loadString('assets/files/$filename');
  SuraLines=SuraContent.split('\n');
  setState(() {});
}
}
