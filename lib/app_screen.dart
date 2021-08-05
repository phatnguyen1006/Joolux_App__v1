import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// routes
import './UI/Home/home_page.dart';
import './UI/Categories/categories_page.dart';
import './UI/Designer/designer_page.dart';
import './UI/User/wishlist_page.dart';
import './UI/ItemSell/sell_item_page.dart';
// helpers
// widgets
import './widgets/Layout/bottom_bar.dart';
import './widgets/Layout/floating_button.dart';
import './widgets/Layout/app_bar.dart';
// provider
import 'providers/authentication/auth.dart';

// ignore: must_be_immutable
class MyScreen extends StatefulWidget {
  int currentPage;
  MyScreen({required this.currentPage});

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  List<Widget> _routeList = <Widget>[
    MyHomePage(),
    CategoriesPage(),
    SellItemPage(),
    DesignerPage(),
    WishlistPage(),
  ];

  void _setPage(int index) {
    setState(() {
      widget.currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider
        StreamProvider.value(
          value: FirebaseAuth.instance.authStateChanges(),
          initialData: null,
        ),
        // Notifier
        ChangeNotifierProvider(
          create: (_) => Auth(),
        ),
        // ChangeNotifierProxyProvider(),
      ],
      child: Consumer<Auth>(
        builder: (context, auth, _) => Scaffold(
          appBar: Header(currentPage: widget.currentPage),
          body: Container(child: _routeList.elementAt(widget.currentPage)),
          floatingActionButton: FloatingButton(
              currentPage: widget.currentPage, setPage: _setPage),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar:
              BottomBar(currentPage: widget.currentPage, setPage: _setPage),
        ),
      ),
    );
  }
}
