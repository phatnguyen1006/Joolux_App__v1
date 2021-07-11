import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        // shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.transparent,
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
                              child: Column(children: [
                                Icon(Icons.home, color: Colors.black),
                                Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 0),
                                    child: Text('Home')),
                              ])),
                          Container(
                              height: double.infinity,
                              padding: EdgeInsets.only(top: 10, bottom: 5),
                              child: Column(children: [
                                Icon(Icons.person_outline,
                                    color: Color(0xFF676E79)),
                                Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 0),
                                    child: Text('Categories')),
                              ])),
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
                              child: Column(children: [
                                Icon(Icons.fireplace_rounded,
                                    color: Color(0xFF676E79)),
                                Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 0),
                                    child: Text('Designer')),
                              ])),
                          Container(
                              height: double.infinity,
                              padding: EdgeInsets.only(top: 10, bottom: 5),
                              child: Column(children: [
                                Icon(Icons.view_headline_outlined,
                                    color: Color(0xFF676E79)),
                                Container(
                                    padding: EdgeInsets.only(top: 5, bottom: 0),
                                    child: Text('Wishlist')),
                              ])),
                        ],
                      )),
                ])));
  }
}
