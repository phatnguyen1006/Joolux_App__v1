import 'package:flutter/material.dart';

//Widgets
import '../components/how_tabview_widgets.dart';
import '../components/why_tabview_widget.dart';
import '../components/what_tabview_widget.dart';
import '../components/payment_tabview_widget.dart';

class TabViewWidgets extends StatefulWidget {
  @override
  _TabViewWidgetsState createState() => _TabViewWidgetsState();
}

class _TabViewWidgetsState extends State<TabViewWidgets>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: TabBar(
              tabs: [
                Tab(text: 'HOW'),
                Tab(text: 'WHY'),
                Tab(text: 'WHAT'),
                Tab(text: 'PAYMENT'),
              ],
              controller: _tabController,
              indicatorColor: Colors.black,
              isScrollable: false,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.shade500,
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            height: 1550,
            child: TabBarView(
              children: [
                HowWidgets(),
                WhyWidgets(),
                WhatWidgets(),
                PaymentWidgets(),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
