import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Hadethcontentbuilder extends StatelessWidget {
String varis;
Hadethcontentbuilder(this.varis);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(varis,
      textAlign: TextAlign.right,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500
      ),),
    );
  }
}
