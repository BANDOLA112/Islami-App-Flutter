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
  int count=0;
  List<String> titles=['سبحان الله','الحمد لله','الله اكبر','لا الاه الا الله'];
  String title='سبحان الله';
  void changeTitle(){
    if (count==3&& counter==5){
      counter=0;
      count=0;
    }
    title=titles[count];

    if(counter==5){
      count+=1;
      title=titles[count];
      counter=0;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(

                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/images/head of seb7a.png')),
                          InkWell(
                              onTap: () {
                                changeTitle();
                                counter++;

                                setState(() {});
                              },
                              child: Image(image: AssetImage('assets/images/body of seb7a.png'))
                          ),
                        ],
                      ),
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
  }

