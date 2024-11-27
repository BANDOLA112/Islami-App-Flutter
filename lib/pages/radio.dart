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
          Image(image: AssetImage('assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png')),
          SizedBox(height: 70,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.skip_previous,size: 70,),
              SizedBox(width: 20,),
              Icon(Icons.play_arrow,size: 70,),
              SizedBox(width: 20,),
              Icon(Icons.skip_next,size: 70,)
            ],
          )

        ],
      ),
    );
  }
}
