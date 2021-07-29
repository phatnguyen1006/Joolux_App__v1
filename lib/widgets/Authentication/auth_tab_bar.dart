import 'package:flutter/material.dart';
// interface:
import '../../models/bars/auth_tabbar.dart';

enum TabInterface {
  Login,
  Register,
}

class AuthTabBar extends StatelessWidget {
  final List<AuthTabBarInterface> _tabList = [
    AuthTabBarInterface(
      title: "LOGIN",
    ),
    AuthTabBarInterface(
      title: "REGISTER",
    ),
  ];

  final TabController _tabController;

  AuthTabBar(this._tabController);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      // overlayColor: MaterialStateProperty.all(Colors.white),
      indicatorColor: Colors.transparent,
      labelColor: Colors.black,
      indicator: BoxDecoration(
          border: Border(bottom: BorderSide(width: 2, color: Colors.black))),
      isScrollable: true,
      labelPadding: EdgeInsets.only(right: 10, left: 10, bottom: 0, top: 0),
      unselectedLabelColor: Color(0xFFCDCDCD),
      tabs: _tabList.map((tab) {
        return Container(
          padding: EdgeInsets.all(0),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 4,
            padding: EdgeInsets.only(top: 8),
            child: Center(
              child: Text(tab.title,
                  style: TextStyle(
                    // backgroundColor: Colors.red,
                    fontFamily: 'MyFlutterApp',
                    fontSize: 18.0,
                  )),
            ),
          ),
        );
      }).toList(),
    );
  }
}
