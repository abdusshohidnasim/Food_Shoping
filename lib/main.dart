import 'package:flutter/material.dart';
import 'package:food_shoping_apps/Pages/home.dart';
import 'package:food_shoping_apps/Pages/page2.dart';
import 'package:food_shoping_apps/Pages/page3.dart';
import 'package:food_shoping_apps/Pages/page4.dart';
import 'package:food_shoping_apps/Pages/page5.dart';
import 'package:food_shoping_apps/Provider/fabarit_provider.dart';
import 'package:food_shoping_apps/SplashScreen.dart';

import 'package:provider/provider.dart';

//main
void main() {
  runApp( MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context)=>ItemProvider()),
      ],
      child:const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/splash": (context)=> Splashscreen(),
        "/Homepage":(context)=>  Home(),
        "/page2":(context)=>Page2(),
        "/page3":(context)=>Page3(),
        "/page4":(context)=>Page4(),
        "/page5":(context)=>Page5(),
      },
      home: Splashscreen(),
    );
  }
}
