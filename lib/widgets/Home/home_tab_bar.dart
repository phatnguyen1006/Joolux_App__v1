import 'package:flutter/material.dart';
// interface:
import '../../models/tabbar_interface.dart';

class HomeTabBar extends StatelessWidget {
  final List<TabBarInterface> _tabList = [
    TabBarInterface(image: "assets/discover.jpg", title: 'DISCOVER'),
    TabBarInterface(image: "assets/discover.jpg", title: 'WOMEN'),
    TabBarInterface(image: "assets/discover.jpg", title: 'MEN'),
    TabBarInterface(image: "assets/discover.jpg", title: 'NEW ARRIVALS'),
    TabBarInterface(image: "assets/discover.jpg", title: 'SALE'),
    TabBarInterface(image: "assets/discover.jpg", title: 'WATCHES'),
    TabBarInterface(image: "assets/discover.jpg", title: 'DESIGNERS'),
    TabBarInterface(image: "assets/discover.jpg", title: 'HOME'),
  ];

  final TabController _tabController;

  HomeTabBar(this._tabController);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      indicatorColor: Colors.transparent,
      labelColor: Colors.black,
      indicator: BoxDecoration(
          border: Border(bottom: BorderSide(width: 4, color: Colors.black))),
      isScrollable: true,
      labelPadding: EdgeInsets.only(right: 10, left: 10, bottom: 0, top: 0),
      unselectedLabelColor: Color(0xFFCDCDCD),
      tabs: _tabList.map((tab) {
        return Container(
          padding: EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    image: DecorationImage(image: AssetImage(tab.image))),
              ),
              Container(
                height: 25,
                padding: EdgeInsets.only(top: 8),
                child: Text(tab.title,
                    style: TextStyle(
                      // backgroundColor: Colors.red,
                      fontFamily: 'Varela',
                      fontSize: 12.0,
                    )),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
