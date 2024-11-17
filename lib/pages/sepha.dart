import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islame/theming.dart';

class Sepha extends StatefulWidget {
  const Sepha({super.key});

  @override
  State<Sepha> createState() => _SephaState();
}

class _SephaState extends State<Sepha> {
  int counter=0;
  String title='';

  @override
  void initState() {
    // TODO: implement initState
    changTitle();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                counter++;

                setState(() {});
              },
                child: Container(
                    child: Image(image: AssetImage('assets/images/logo2.png'))
                )
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ThemingColors.maincolor,
              ),
              width: 80,
              height: 80,
              alignment: Alignment.center,
              child: Text('$counter',style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white

              ),),
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ThemingColors.maincolor,
              ),
                padding: EdgeInsets.all(20),
                child: Text('${title}',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
                  color: Colors.white
            ),))
          ],
        ),
      ),
    );
  }
  void  changTitle(){
    List<String> titles=['سبحان الله','الحمد لله','الله اكبر','لا الاه الا الله'];
    for(int i=0;i<4;i++){
        title=titles[i];
      if (counter==5){
        counter=0;
      }
    }
  }
}
