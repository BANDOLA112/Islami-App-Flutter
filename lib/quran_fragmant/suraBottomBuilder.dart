import 'package:flutter/material.dart';
import 'package:islame/quran_fragmant/suraDetailsFragment.dart';

class Surabilder extends StatelessWidget {
String suraName='';
int fileName;
Surabilder(this.suraName,this.fileName);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Suradetails.routeName,
            arguments: SuraDetailsArge(suraName, '${fileName+1}.txt'))        ;

      } ,
      child: Container(
        alignment: Alignment.center,
        child: Text(suraName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
      ),
    );
  }
}
class SuraDetailsArge{
  String suraName;
  String fileName;
  SuraDetailsArge(this.suraName,this.fileName);
}
