import 'package:flutter/material.dart';
// routes
import './UI/Home/home_page.dart';
import './UI/Categories/categories_page.dart';
import './UI/Designer/designer_page.dart';
import './UI/User/wishlist_page.dart';
// widgets
import './widgets/Layout/bottom_bar.dart';
import './widgets/Layout/floating_button.dart';
import './widgets/Layout/app_bar.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int _currentPage = 0;

  List<Widget> _routeList = <Widget>[
    MyHomePage(),
    CategoriesPage(),
    DesignerPage(),
    WishlistPage(),
  ];

  void _setPage(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Container(child: _routeList.elementAt(_currentPage)),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:
          BottomBar(currentPage: _currentPage, setPage: _setPage),
    );
  }
}
