import 'package:flutter/material.dart';
import 'package:islame/homeScreen.dart';
import 'package:islame/quran_fragmant/suraDetailsFragment.dart';
import 'package:provider/provider.dart';
import 'Provider/changeLanguage.dart';
import 'ahadeth_fragment/ahadethDetailsFragment.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (context){
      return AppProvider();
    },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return MaterialApp(

      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(provider.appLanguage),

      routes: {
        Homescreen.routeName:(context)=>Homescreen(),
        Suradetails.routeName:(context)=>Suradetails(),
        Ahadethdetailsfragment.routeName:(context)=>Ahadethdetailsfragment(),
      },

      initialRoute:Homescreen.routeName,

    );
  }
}

