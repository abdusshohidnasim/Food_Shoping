import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shoping_apps/Provider/fabarit_provider.dart';
import 'package:food_shoping_apps/Style/colors.dart';

import 'package:food_shoping_apps/Wizeds/GoBackButton.dart';
import 'package:food_shoping_apps/Wizeds/TexttFrom.dart';
import 'package:provider/provider.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    double sceenwith = MediaQuery.of(context).size.width;
    double sceenhight = MediaQuery.of(context).size.height;
    return Consumer<ItemProvider>(
      builder: ((context, fabaritporvidermodel, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.orange,
              ),
              Gobackbutton(
                ontab: () {
                  Navigator.pop(context);
                },
                text: "My favorite",
              ),
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.orange,
              ),
              Container(
                height: sceenhight / 1.4,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: fabaritporvidermodel.faroridItem.length,

                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage(
                                fabaritporvidermodel.faroridItem[index]["img"]
                                    .toString(),
                              ),
                              height: sceenhight / 18,
                            ),
                            Text(
                              "Quinoa fruit salad",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                fabaritporvidermodel.favoridItemAdd(index);
                              },
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 100,
                width: double.infinity,
                alignment: Alignment.topCenter,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Total \n 600",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {

                         showModalBottomSheet(

                           context: context,
                           backgroundColor: Colors.white,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                           ),
                           builder: (context) {
                             return Container(
                               padding: EdgeInsets.symmetric(horizontal: 20),
                               child: Column(
                                   mainAxisSize: MainAxisSize.min,
                                   crossAxisAlignment: CrossAxisAlignment.start,


                                   children: [
                                     SizedBox(height: 20,),
                                     Text("Delivery address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                     SizedBox(height: 20,),
                                       textFormField(hinttext: "Location",prefix: Icon(Icons.local_activity)) ,
                                     SizedBox(height: 20,),

                                     Text("Number we can call",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                     SizedBox(height: 20,),

                                     textFormField(hinttext: "01851998979",prefix: Icon(Icons.local_activity)) ,
                                     SizedBox(height: 50,),



                                   ]),
                             );
                           },

                       );
                      },
                      child: Text(
                        "Chack out",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.primaryColors,
                        minimumSize: Size(sceenwith / 2.2, 60),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
