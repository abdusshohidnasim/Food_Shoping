import 'package:flutter/material.dart';
import 'package:food_shoping_apps/Wizeds/TabBar.dart';
import 'package:food_shoping_apps/Wizeds/TexttFrom.dart';
import 'package:provider/provider.dart';

import '../Provider/fabarit_provider.dart';
import '../Wizeds/recomanded_conbo.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double sceenwith = MediaQuery.of(context).size.width;
    double sceenhight = MediaQuery.of(context).size.height;
    return Consumer<ItemProvider>(
      builder: ((context, providermodel, child) => Scaffold(
        drawer: Drawer(
          width: 200,

          child: ListView(
            children: [DrawerHeader(child: Text("Naiem Hassna Naiem"))],
          ),
        ),

        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 40,
                      color: Colors.white,
                      child: Builder(
                        builder: (BuildContext innerContext) {
                          return TextButton(
                            onPressed: () {
                              Scaffold.of(innerContext).openDrawer();
                            },
                            child: Icon(
                              Icons.filter_list_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                          );
                        },
                      ),
                    ),
                    Spacer(),
                    InkWell(onTap: (){
                      Navigator.pushNamed(context, "/page5");
                    }, child: Icon(Icons.favorite, color: Colors.orange)),
                    Icon(Icons.shopping_bag, color: Colors.orange),
                    SizedBox(width: 20),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Hlw Naiem, ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "What Fuild Sold",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                Text(
                  "combo dou walt toda",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        child: textFormField(
                          hinttext: "Search for fruit salad combos",
                          prefix: Icon(
                            Icons.search,
                            color: Colors.black38,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Image(image: AssetImage("assets/images/icon.png")),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Recommended Combo",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 20),
                AspectRatio(
                  aspectRatio: 2,
                  child: Container(
                    width: sceenwith / 1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        var imageicdex = providermodel.prodected[index];
                        return RecomandedConbo(
                          image: imageicdex["img"].toString(), ontab: () {
                          providermodel.favoridItemAdd(index);
                        },
                        );
                      },
                    ),
                  ),
                ),
                // SizedBox(height: 3,),
                Tabbar(),
                    SizedBox(height: 20,),

                   SizedBox(
                      width: sceenwith,
                      child: Container(
                        height: sceenhight/5,
                        width: 130,

                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            for(int p=0;p<_tabController.length;p++)
                              ListView.builder(
                                scrollDirection: Axis.horizontal,
                                  itemCount: providermodel.prodected.length,
                                  itemBuilder:(context ,index){

                                    return RecomandedConbo(image: providermodel.prodected[index]["img"].toString(),
                                      ontab: () {
                                      providermodel.favoridItemAdd(index);

                                      },);
                                  })
                          ],
                        ),
                      ),
                    ),

              ],
            ),
          ),
        ),
      )),
    );
  }
}
