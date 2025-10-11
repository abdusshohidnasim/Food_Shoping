import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Style/colors.dart';

class Homepagehader extends StatelessWidget {
  ImageProvider image;
  double heght;
  // VoidCallback elevatedButton;
   Homepagehader({super.key, required this.image,required this.heght,});


  @override
  Widget build(BuildContext context) {
    double sceenwith = MediaQuery.of(context).size.width;
    double sceenhight = MediaQuery.of(context).size.width;

    return  Container(
      padding: EdgeInsets.only(top: 40,left: 20,right: 20,),

      alignment: Alignment.topLeft,
      height: sceenhight / heght,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: CustomColors.primaryColors,
        // borderRadius: BorderRadius.only(
        //   topRight: Radius.circular(30),
        //   topLeft: Radius.circular(30),
        // ),
        // boxShadow: [BoxShadow(spreadRadius: 2)],
        image: DecorationImage(image: image,repeat: ImageRepeat.noRepeat,alignment: Alignment.center),
      ),
       // child:elevatedbutton;
    );
  }
}
