import 'package:flutter/material.dart';
// interface:
import '../../models/tabbar_interface.dart';

class HomeTabBar extends StatelessWidget {
  final List<TabBarInterface> _tabList = [
    TabBarInterface(image: 'Img1', title: 'Man'),
    TabBarInterface(image: 'Img2', title: 'Women'),
    TabBarInterface(image: 'Img3', title: 'Children'),
    TabBarInterface(image: 'Img4', title: 'Trending'),
  ];

  final TabController _tabController;

  HomeTabBar(this._tabController);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      indicatorColor: Colors.transparent,
      labelColor: Colors.black,
      isScrollable: true,
      labelPadding: EdgeInsets.only(right: 20, left: 20),
      unselectedLabelColor: Color(0xFFCDCDCD),
      tabs: _tabList.map((tab) {
        return Container(
          child: Column(
            children: [
              Text(tab.image),
              Tab(
                child: Text(tab.title,
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              )
            ],
          ),
        );
      }).toList(),
      // Container(
      //     child: Column(children: [
      //   Text('Img'),
      //   Tab(
      //     child: Text('Cookies',
      //         style: TextStyle(
      //           fontFamily: 'Varela',
      //           fontSize: 21.0,
      //         )),
      //   )
      // ])),
    );
  }
}
