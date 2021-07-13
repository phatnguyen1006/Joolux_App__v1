import 'package:flutter/material.dart';
// widgets
import '../../widgets/Home/home_page_widgets.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return HomePageWidgets();
  }
}
