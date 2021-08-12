import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

// widgets
import '../../models/WishList/fakeList.dart';
import './components/empty_wishlist.dart';
import './components/list_item_wishlist.dart';
import './components/button_wishlist.dart';
// import '../../models/products/products.dart';
// import '../product_details_page/details_page.dart';

class WishListWidgets extends StatefulWidget {
  @override
  _WishListWidgetsState createState() => _WishListWidgetsState();
}

class _WishListWidgetsState extends State<WishListWidgets> {
  List<FakeList> fakeList = <FakeList>[];

  @override
  void initState() {
    super.initState();
    // _favoriteList();
    setState(() {
      fakeList = wishListfake;
    });
  }

  // void _favoriteList() {

  // }

  @override
  Widget build(BuildContext context) {
    return fakeList.length > 0
        ? ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: fakeList.length,
            itemBuilder: (context, i) {
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                height: 250,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          flex: 7,
                          child: ListItemWishlist(fakeList: fakeList, index: i),
                        ),
                        ButtonClick(
                          fakeList: fakeList,
                          index: i,
                        ),
                      ],
                    ),
                    Positioned(
                      top: -5,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            setState(() {
                              fakeList.removeAt(i);
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
            })
        : EmptyWishList();
  }
}

void showCustomDialog(BuildContext context) => showDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) => new AlertDialog(
          title: new Text("Duty/Taxes May Apply"),
          content:
              new Text("Duty/Taxes May Apply\nShipping & Insurance Included"),
          actions: <Widget>[
            TextButton(
              child: Text(
                'OK',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));
