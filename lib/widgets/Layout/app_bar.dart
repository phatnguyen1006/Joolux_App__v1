import 'package:flutter/material.dart';
// widgets
import '../../UI/User/user_page.dart';
// helpers
import '../../helpers/middlewares/auth_middleware.dart';
// orther
import '../../models/bars/header_bar.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final int currentPage;

  Header({required this.currentPage, this.title});

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
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AuthMiddleware(dest: UserPage())));
        },
      ),
      title: Text(titleList[currentPage] ?? 'THE LUXURY CLOSET',
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
