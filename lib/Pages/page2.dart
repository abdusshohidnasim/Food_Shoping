import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shoping_apps/Pages/page3.dart';
import 'package:food_shoping_apps/Wizeds/homepagehader.dart';

import '../Wizeds/TexttFrom.dart';
import '../Wizeds/Button.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  onprash() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Page2()),
    );
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
              image: AssetImage("assets/images/prodracted10.png"),
              heght: 0.8,
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 80,
                left: 20,
                right: 30,
                top: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    "What is your firstname?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20),
                  textFormField(hinttext: "Your Name"),
                  SizedBox(height: sceenhight / 4),
                  Button(context, "Start Ordering", () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Page3()),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
