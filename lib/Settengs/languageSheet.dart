import 'package:flutter/material.dart';
import 'package:islame/cachHelper/cachData.dart';
import 'package:provider/provider.dart';
import '../Provider/changeLanguage.dart';

class Languagesheet extends StatefulWidget {


  @override
  State<Languagesheet> createState() => _LanguagesheetState();
}

class _LanguagesheetState extends State<Languagesheet> {
  bool isselecteed1=true;

  bool isselecteed2=false;

    void arabic(){

      isselecteed2=true;
      isselecteed1=false;
    }

    void English(){
      isselecteed1=true;
      isselecteed2=false;
    }

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);



    return Column(
      children: [
        InkWell(
            onTap: (){
              setState(() {
              English();
              provider.ChangeLanguage('en');
              });
            },
            child: Container(
                child: isSelected('English', isselecteed1)
            )
        ),//English
        InkWell(
            onTap: (){
              setState(() {
                arabic();
                provider.ChangeLanguage('ar');
              });
            },
            child: Container(
                child: isSelected('العربيه', isselecteed2)
            )
        ),//Arabic
      ],
    );
  }

  Widget isSelected(String text,bool selected){
    if(selected){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.white
                ),),
              Icon(
                Icons.check,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
      );
    }else{
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.white
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
