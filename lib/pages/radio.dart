import 'package:flutter/material.dart';

class Radioo extends StatelessWidget {
  const Radioo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/ahadethimage.png')),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.skip_previous),
              SizedBox(height: 10,),
              Icon(Icons.play_arrow),
              SizedBox(height: 10,),
              Icon(Icons.skip_next)
            ],
          )

        ],
      ),
    );
  }
}
