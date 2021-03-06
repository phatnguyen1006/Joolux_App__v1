import 'package:flutter/material.dart';
import 'package:joolux_demo/widgets/Home/tabs_screen/sale_body.dart';
import './tabs_screen/discovery_body.dart';
import './tabs_screen/women_body.dart';
import './tabs_screen/new_arrivals_body.dart';
import './tabs_screen/sale_body.dart';
import './tabs_screen/watch_body.dart';

// Widgets
import './home_tab_bar.dart';
import 'components/cookie_page.dart';

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
    _tabController = TabController(length: 8, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 5.0),
        HomeTabBar(_tabController),
        Expanded(
          child: Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                DiscoveryBody(),
                WomenBody(),
                WomenBody(),
                NewArrivalBody(),
                SaleBody(),
                WatchBody(),
                CookiePage(),
                NewArrivalBody(),
              ])),
        )
      ],
    );
  }
}
