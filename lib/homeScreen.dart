import 'package:flutter/material.dart';
import 'package:islame/ahadeth_fragment/ahadeth_fragment.dart';
import 'package:islame/Settengs/setting.dart';
import 'package:islame/quran_fragmant/quran_fragment.dart';
import 'package:islame/pages/radio.dart';
import 'package:islame/pages/sepha.dart';
import 'package:islame/theming.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Homescreen extends StatefulWidget {
  static const String routeName='HomedScreen';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit:BoxFit.cover,
          )
      ),
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
        body: onClick(),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor:ThemingColors.maincolor),
          child: BottomNavigationBar(
            onTap:(value) {
              setState(() {
                currentIndex=value;
              });
            },
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/icon/quran.png')),label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/icon/ahadeth.png')),label: AppLocalizations.of(context)!.ahadith),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/icon/sephaa.png')),label: AppLocalizations.of(context)!.sepha,),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/icon/radio.png')),label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label:AppLocalizations.of(context)!.setting),
            ],
          ),
        ),
      ),
    );
  }
  Widget onClick(){
    if(currentIndex==0){
      return Quran();
    }else if(currentIndex==1){
      return Ahadeth();
    }else if(currentIndex==2){
      return Sepha();
    }else if(currentIndex==3){
      return Radioo();
    }else{
      return Setting();
    }


  }
}
