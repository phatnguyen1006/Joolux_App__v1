import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joolux_demo/UI/Authentication/auth_page.dart';
// Auth_Helper_Middleware
// provider
import '../../providers/auth.dart';
// icon
import '../../models/icons/icons.dart';

// ignore: must_be_immutable
class BottomBar extends StatelessWidget {
  final int currentPage;
  final Function setPage;
  bool isAuth = Auth().isAuth;

  BottomBar({required this.currentPage, required this.setPage});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        // shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.white,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 65.0,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      height: 65.0,
                      padding: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width / 2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: double.infinity,
                            padding: EdgeInsets.only(top: 10, bottom: 5),
                            child: InkWell(
                              onTap: () {
                                setPage(0);
                              },
                              child: Column(children: [
                                Icon(Icons.home,
                                    color: currentPage == 0
                                        ? Colors.black
                                        : Colors.grey[400]),
                                Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 0),
                                    child: Text('Home')),
                              ]),
                            ),
                          ),
                          Container(
                              height: double.infinity,
                              padding: EdgeInsets.only(top: 10, bottom: 5),
                              child: InkWell(
                                onTap: () {
                                  setPage(1);
                                },
                                child: Column(children: [
                                  Icon(Icons.person_outline,
                                      color: currentPage == 1
                                          ? Colors.black
                                          : Colors.grey[400]),
                                  Container(
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 0),
                                      child: Text('Categories')),
                                ]),
                              )),
                        ],
                      )),
                  Container(
                    height: double.infinity,
                    padding: EdgeInsets.only(top: 40, bottom: 10),
                    child: Text(
                      'Sell Item',
                    ),
                  ),
                  Container(
                      height: double.infinity,
                      padding: EdgeInsets.only(right: 10),
                      width: MediaQuery.of(context).size.width / 2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              height: double.infinity,
                              padding: EdgeInsets.only(top: 10, bottom: 5),
                              child: InkWell(
                                onTap: () {
                                  setPage(3);
                                },
                                child: Column(children: [
                                  Icon(Icons.fireplace_rounded,
                                      color: currentPage == 3
                                          ? Colors.black
                                          : Colors.grey[400]),
                                  Container(
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 0),
                                      child: Text('Designer')),
                                ]),
                              )),
                          Container(
                              height: double.infinity,
                              padding: EdgeInsets.only(top: 10, bottom: 5),
                              child: InkWell(
                                onTap: () {
                                  // Checking Middleware before setPage.
                                  if (!isAuth) {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => AuthPage()));
                                    return;
                                  }
                                  setPage(4);
                                },
                                child: Column(children: [
                                  Icon(MyIcon.heart,
                                      color: currentPage == 4
                                          ? Colors.black
                                          : Colors.grey[400]),
                                  Container(
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 0),
                                      child: Text('Wishlist')),
                                ]),
                              )),
                        ],
                      )),
                ])));
  }
}
