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
        iconSize: 0,
        icon: SvgPicture.asset("assets/icons/search.svg"),
        onPressed: () {

        },
      ),
      IconButton(
        iconSize: 0,
        icon: SvgPicture.asset("assets/icons/cart.svg"),
        onPressed: () {

        },
      ),
      const SizedBox(width: DefaultPadding / 2,)
    ],
  );
}
