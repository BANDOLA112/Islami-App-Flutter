import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islame/Settengs/languageSheet.dart';
import 'package:islame/theming.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.only(top: 20,bottom: 50,left: 20,right: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            InkWell(
              onTap:() {
                ShowModelSheet();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Text(AppLocalizations.of(context)!.languages,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        color: ThemingColors.maincolor,
                      )
                    ],
                  )
              ),
            ),//ModelSheet
          ],
        ),
      ),
    );
  }

  ShowModelSheet()async{
    return await showBottomSheet(
      backgroundColor: ThemingColors.maincolor.withOpacity(0.8),
      context: context,
      builder: (context) {
        return BottomsCreator();
      },
      );
  }

  BottomsCreator(){
    return Container(
      height: 400,
      padding: EdgeInsets.all(15),
      child: Languagesheet()
      );
  }
}
