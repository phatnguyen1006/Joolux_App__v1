import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/constants.dart';

AppBar appPopBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/back.svg",
        color: Color(0xFF545D68),
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset("assets/icons/search.svg",
            color: Color(0xFF545D68)),
        onPressed: () {},
      ),
      IconButton(
        icon:
            SvgPicture.asset("assets/icons/cart.svg", color: Color(0xFF545D68)),
        onPressed: () {},
      ),
      const SizedBox(
        width: DefaultPadding / 2,
      )
    ],
  );
}
