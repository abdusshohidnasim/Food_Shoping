import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_shoping_apps/Provider/fabarit_provider.dart';
import 'package:provider/provider.dart';

import 'GoBackButton.dart';

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
                height: sceenhight / 1,
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
                                  fabaritporvidermodel.faroridItem[index]["img"].toString()
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
                            Icon(Icons.favorite,size: 30,)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
