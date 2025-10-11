import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gobackbutton extends StatelessWidget {
  VoidCallback ontab;
  String? text ="";


   Gobackbutton({super.key,required this.ontab,this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.centerLeft,
      color: Color(0xffFFA451),
      height: 80,
      width: double.infinity,
      child: InkWell(
        onTap: ontab,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.arrow_back_ios),Text("Go back"),




                ],),
            ),

            Text(text!,style: TextStyle(fontSize: 24,fontWeight:FontWeight.w500),),
            SizedBox(width: 1,),
          ],
        ),
      ),
    );
  }
}
