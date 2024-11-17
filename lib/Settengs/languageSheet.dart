import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/changeLanguage.dart';

class Languagesheet extends StatelessWidget {
  const Languagesheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);

    return Column(
      children: [
        InkWell(
            onTap: (){
              provider.ChangeLanguage('en');
            },
            child: Container(
                child: isSelected('English', true)
            )
        ),//English
        InkWell(
            onTap: (){
              provider.ChangeLanguage('ar');
            },
            child: Container(
                child: isSelected('العربيه', false)
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
