import 'package:flutter/material.dart';
// interface:
import '../../models/tabbar_interface.dart';

class HomeTabBar extends StatelessWidget {
  final List<TabBarInterface> _tabList = [
    TabBarInterface(image: "assets/discover.jpg", title: 'Discover'),
    TabBarInterface(image: "assets/discover.jpg", title: 'Women'),
    TabBarInterface(image: "assets/discover.jpg", title: 'Children'),
    TabBarInterface(image: "assets/discover.jpg", title: 'Trending'),
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
              Container(
                width: 50,
                height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    image:DecorationImage(
                      image: AssetImage(tab.image)
                    )
                ),
              ),
              //Text(tab.image),
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
