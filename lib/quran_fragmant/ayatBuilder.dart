import 'package:flutter/cupertino.dart';
import 'package:islame/quran_fragmant/suraDetailsFragment.dart';

class Ayat extends StatelessWidget {
  String line;
  Ayat(this.line);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(line,
        textAlign: TextAlign.right,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),),
    );
  }
}
