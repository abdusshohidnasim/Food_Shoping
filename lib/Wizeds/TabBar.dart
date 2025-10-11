import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {
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
    return Container(
      height: 80,
      child: TabBar(
        controller: _tabController,
        isScrollable: true,

        indicatorColor: Colors.yellow,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13,
        ),

        tabs: [
          Tab(child: Text("Hottest")),
          Tab(child: Text("Popular")),
          Tab(child: Text("New combo")),
          Tab(child: Text(" Top")),
          Tab(child: Text("Hottest")),
          Tab(child: Text("Popular")),
          Tab(child: Text("New combo")),
          Tab(child: Text(" Top")),
        ],
      ),
    );
  }
}
