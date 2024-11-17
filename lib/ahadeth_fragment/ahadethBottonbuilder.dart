import 'package:flutter/material.dart';
import 'package:islame/ahadeth_fragment/ahadethDetailsFragment.dart';

class Ahadethbottonbuilder extends StatelessWidget {
  String hadethName;
  int hadethFileName;
  Ahadethbottonbuilder(this.hadethName,this.hadethFileName);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Ahadethdetailsfragment.routeName,
        arguments: HadethDetails(hadethName, "h${hadethFileName+1}.txt"));
      },

      child: Container(
        alignment: Alignment.center,
        child: Text(hadethName,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
class HadethDetails{
    String hadethName;
    String hadthFileName;
    HadethDetails(this.hadethName,this.hadthFileName);
  }
