import 'dart:async';

import 'package:flutter/material.dart';

import 'Pages/home.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});




  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image(
        image: AssetImage("assets/images/splash_screen.png"),
        width: 200,
        height: 300,
      ),

      ),
    );
  }
}
