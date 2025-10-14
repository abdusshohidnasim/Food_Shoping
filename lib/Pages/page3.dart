import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shoping_apps/Pages/page2.dart';
import 'package:food_shoping_apps/Wizeds/Button.dart';
import 'package:food_shoping_apps/Wizeds/homepagehader.dart';
import 'package:provider/provider.dart';

import '../Provider/fabarit_provider.dart';
import '../Wizeds/GoBackButton.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  void onprash(){Navigator.pushNamed(context, "/page4");}

  @override
  Widget build(BuildContext context) {

    double sceenwith = MediaQuery.of(context).size.width;
    double sceenhight = MediaQuery.of(context).size.width;
    return Consumer<ItemProvider>(builder: ((context,numberProvidrModel,child)=>

        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gobackbutton(
                  ontab: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()),
                    );
                  },text: "",
                ),

                Homepagehader(
                  image: AssetImage("assets/images/prodracted7.png"),
                  heght: 1.2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Quinoa Fruit Salad",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          numberProvidrModel.decrement();
                        },
                        child: Icon(Icons.remove, size: 35),
                      ),
                      Text("${numberProvidrModel.number.toString()}", style: TextStyle(fontSize: 18)),
                      InkWell(
                        onTap: () {
                          numberProvidrModel.increment();
                        },
                        child: Icon(Icons.add, size: 30),
                      ),
                      Spacer(),

                      Text(
                        "\$ 2000",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "One Pack Contains:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "If you are looking for a new fruit salad to eat today,\n quinoa is the perfect brunch for you. make",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                  ),
                ),

                SizedBox(height: sceenhight/3,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Icon(Icons.favorite,color: Colors.red[200],size: 40,)),

                      Spacer(),
                      Expanded(
                          flex: 4,
                          child: Button(context, "Add to basket", (){
                            setState(() {
                              onprash();
                            });
                            //
                          }))

                    ],),
                ),



              ],
            ),
          ),
        )



    )
    );


  }
}
