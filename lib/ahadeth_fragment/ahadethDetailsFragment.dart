import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame/ahadeth_fragment/hadethContentBuilder.dart';
import 'package:islame/theming.dart';
import 'ahadethBottonbuilder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Ahadethdetailsfragment extends StatefulWidget {
static const String routeName='Ahadethfragment';

  @override
  State<Ahadethdetailsfragment> createState() => _AhadethdetailsfragmentState();
}

class _AhadethdetailsfragmentState extends State<Ahadethdetailsfragment> {
  List<String> hadethLines=[];
  String hadethcontent='';
  @override
  Widget build(BuildContext context) {
    HadethDetails arg=ModalRoute.of(context)?.settings.arguments as HadethDetails;
    contentCreator(arg.hadthFileName);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:
        AssetImage('assets/images/background.png'),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.title,
            style:  TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 50),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.8),
        ),
          child: Column(
            children: [
              Text(arg.hadethName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),),
              Divider(
                thickness: 2,
                color: ThemingColors.maincolor,
              ),
              Expanded(
                  child: ListView.builder(itemBuilder: (context,index){
                    return Hadethcontentbuilder(hadethLines[index]);
                  },
                    itemCount: hadethLines.length,
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

contentCreator(name) async {
  hadethcontent= await rootBundle.loadString('assets/ahadeth/${name}');
  hadethLines=hadethcontent.split('\n');
  hadethLines.removeAt(0);
  setState(() {});
}
}
