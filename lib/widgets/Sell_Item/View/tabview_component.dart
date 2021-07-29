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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Container(
            height: 50,
            width: size.width,
            child: TabBar(
              tabs: [
                Tab(text: 'HOW'),
                Tab(text: 'WHY'),
                Tab(text: 'WHAT'),
                Tab(text: 'PAYMENT'),
              ],
              indicatorColor: Colors.black,
              isScrollable: false,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.shade500,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.grey.shade300,
              child: TabBarView(
                children: [
                  HowWidgets(),
                  WhyWidgets(),
                  WhatWidgets(),
                  PaymentWidgets(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
