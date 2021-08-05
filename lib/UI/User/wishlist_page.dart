import 'package:flutter/material.dart';
// widgets
import '../../widgets/WishList/wish_list_widget.dart';

class WishlistPage extends StatefulWidget {
  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return WishListWidgets();
  }
}
