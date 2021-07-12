import 'package:flutter/material.dart';
import '../../widgets/Layout/bottom_bar.dart';
import '../../widgets/Home/home_page_widgets.dart';
import '../../widgets/Layout/floating_button.dart';
import '../../widgets/Layout/app_bar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Container(
          // decoration: BoxDecoration(color: Colors.black),
          child: ListView(
            padding: EdgeInsets.only(left: 10.0, right: 0.0),
            children: <Widget>[
            HomePageWidgets(),
          ],
      )),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}

// body: Container(
// // decoration: BoxDecoration(color: Colors.black),
// child: ListView(
// padding: EdgeInsets.only(left: 10.0, right: 0.0),
// children: <Widget>[
// HomePageWidgets(),
// ],
// )),