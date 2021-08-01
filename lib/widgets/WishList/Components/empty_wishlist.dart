import 'package:flutter/material.dart';
import '../../../models/icons/icons.dart';
//Widgets

class EmptyWishList extends StatefulWidget {
  @override
  _EmptyWishListState createState() => _EmptyWishListState();
}

class _EmptyWishListState extends State<EmptyWishList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox.fromSize(
            size: Size.fromRadius(35),
            child: FittedBox(
              child: Icon(MyIcon.heart),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'Your Wishlist is Empty',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
