import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  Header({this.title});

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.person_pin, color: Color(0xFF545D68)),
        onPressed: () {},
      ),
      title: Text(title ?? 'THE LUXURY CLOSET',
          style: TextStyle(
              fontFamily: 'Playfair Display',
              fontSize: 20.0,
              color: Colors.black)),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, color: Color(0xFF545D68)),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: Color(0xFF545D68)),
          onPressed: () {},
        ),
      ],
    );
  }
}
