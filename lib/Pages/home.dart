import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shoping_apps/Pages/page2.dart';
import 'package:food_shoping_apps/Style/colors.dart';
import 'package:food_shoping_apps/Wizeds/homepagehader.dart';

import '../Wizeds/Button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void onprash(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Page2()));
  }
  @override
  Widget build(BuildContext context) {
    double sceenwith = MediaQuery.of(context).size.width;
    double sceenhight = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Homepagehader(
              image: AssetImage("assets/images/prodracted11.png"),heght: 0.8,
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 80,
                left: 20,
                right: 30,
                top: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(
                    "Get The Freshest Fruit Salad Combo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "We deliver the best and freshest  fruit \n salad in town. Order for a combo today!!!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: sceenhight/3,),
                Button(context, "Let’s Continue", (){
                  onprash();
                })

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
