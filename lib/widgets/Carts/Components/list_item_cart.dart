import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

// widgets
import '../../../models/WishList/fakeList.dart';
import './info_item_cart.dart';
import './button_move_to_wishlist.dart';

class ListItemCart extends StatefulWidget {
  @override
  _ListItemCartState createState() => _ListItemCartState();
}

class _ListItemCartState extends State<ListItemCart> {
  List<FakeList> fakeList = <FakeList>[];

  @override
  void initState() {
    super.initState();
    setState(() {
      fakeList = fakeCart;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: fakeList.length,
          itemBuilder: (context, i) {
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black, width: 1),
                ),
              ),
              height: 290,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 8,
                        child: InfoItemCart(fakeList: fakeList, index: i),
                      ),
                      Expanded(
                          flex: 2,
                          child:
                              BtnMoveToWishlist(fakeList: fakeList, index: i)),
                    ],
                  ),
                  Positioned(
                    top: -5,
                    right: 0,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: IconButton(
                        icon: const Icon(Icons.delete_outlined),
                        onPressed: () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (_) => new AlertDialog(
                              content: new Text(
                                  "Are you sure you want to remove this item form your shopping cart?"),
                              actions: <Widget>[
                                TextButton(
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  child: Text(
                                    'OK',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        fakeList.removeAt(i);
                                        Navigator.of(context).pop();
                                      },
                                    );
                                  },
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
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
