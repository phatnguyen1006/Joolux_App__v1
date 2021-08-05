import 'package:flutter/material.dart';
//Widgets

import '../../WishList/Components/list_item_wishlist.dart';

class PriceDetail extends StatefulWidget {
  @override
  _PriceDetailState createState() => new _PriceDetailState();
}

class _PriceDetailState extends State<PriceDetail> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Text('Price Details', style: TextStyle(fontSize: 20)),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal"),
                Text(
                  "\$500",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shippng & Insurance"),
                Text("Included"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black, width: 1),
              ),
            ),
          ),
          Container(
            child: Text(
              'Final Price',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Duty/Taxes May Apply",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.circle_notifications),
                      color: Color(0xFF676E79),
                      onPressed: () {
                        showCustomDialog(context);
                      },
                    ),
                  ],
                ),
                Text(
                  "\$500",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
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
