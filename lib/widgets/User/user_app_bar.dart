import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserPageHeader extends StatelessWidget implements PreferredSizeWidget {
  UserPageHeader();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      title: Text('MY ACCOUNT',
          style: TextStyle(
              fontFamily: 'Playfair Display',
              fontSize: 20.0,
              color: Colors.black)),
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.grey.shade800,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
