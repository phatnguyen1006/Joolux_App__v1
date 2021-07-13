import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';


AppBar appPopBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.blueGrey,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/back.svg",
        color: Colors.white,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(
            "assets/icons/search.svg",
            width: 20,
            height: 20,
        ),
        onPressed: () {

        },
      ),
      IconButton(
        icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            width: 20,
            height: 20,
        ),
        onPressed: () {

        },
      ),
      const SizedBox(width: DefaultPadding/2,)
    ],
  );
}
