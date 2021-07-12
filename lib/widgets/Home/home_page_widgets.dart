import 'package:flutter/material.dart';
import 'package:joolux_demo/widgets/components/body.dart';

// Widgets
import './home_tab_bar.dart';
import './cookie_page.dart';

class HomePageWidgets extends StatefulWidget {
  @override
  _HomePageWidgetsState createState() => _HomePageWidgetsState();
}

class _HomePageWidgetsState extends State<HomePageWidgets>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 15.0),
        HomeTabBar(_tabController),
        Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(controller: _tabController, children: [
              CookiePage(),
              Body(),
              CookiePage(),
              CookiePage(),
            ]))
      ],
    );
  }
}
