import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
  String appLanguage='en';
  void ChangeLanguage(String lang){
    appLanguage=lang;
    notifyListeners();
  }
}