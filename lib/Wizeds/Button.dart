import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shoping_apps/Pages/page2.dart';

import '../Style/colors.dart';

SizedBox Button (BuildContext context,String buttonname,VoidCallback onprash) {
  return SizedBox(
    height: 60,
    width: double.infinity,
    child: ElevatedButton(
     onPressed: onprash,
      child: Text(buttonname,style: TextStyle(color: Colors.white),),
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.primaryColors,
      ),
    ),
  );
}

//
// void onprash(BuildContext context){
//   Navigator.pushReplacement(
//     context,
//     MaterialPageRoute(builder: (context) => Page2()),
//   );
// }