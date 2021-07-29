import 'package:flutter/material.dart';

//Widgets
import './how_tabview_widgets/premium_tab_widget.dart';
import './how_tabview_widgets/how_to_sell_tab_widget.dart';

class HowWidgets extends StatefulWidget {
  @override
  _HowWidgetsState createState() => _HowWidgetsState();
}

class _HowWidgetsState extends State<HowWidgets> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: TabBar(
                tabs: [
                  Tab(text: 'Premium Concierge Service'),
                  Tab(text: 'Sell On Your Own'),
                ],
                indicator: BoxDecoration(
                  color: Colors.black,
                ),
                isScrollable: false,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey.shade500,
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.white,
                child: TabBarView(
                  children: [
                    PremiumTab(),
                    HowToSellTab(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
