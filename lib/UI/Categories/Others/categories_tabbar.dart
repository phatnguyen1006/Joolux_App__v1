import 'package:flutter/material.dart';


class CategoriesTabBar extends StatelessWidget {
  final TabController tabController;

  const CategoriesTabBar({Key? key, required this.tabController}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      indicatorColor: Colors.transparent,
      labelColor: Colors.black,
      indicator: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 2, color: Colors.black))),
      labelPadding:
      EdgeInsets.only(right: 10, left: 10, bottom: 0, top: 0),
      unselectedLabelColor: Color(0xFFCDCDCD),
        tabs: [
          Tab(
            text: "WOMEN",
          ),
          Tab(text: "MEN")
        ],
    );
  }
}
