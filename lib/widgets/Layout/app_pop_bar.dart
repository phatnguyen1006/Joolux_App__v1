import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../widgets/Layout/search_page_app_bar.dart';
import '../../constants/constants.dart';

AppBar appPopBar(BuildContext context, String title) {

  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Center(
      child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black
          ),
      ),
    ),
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
        onPressed: () {
          showSearch(context: context, delegate: SearchPage(), useRootNavigator: true);
        }
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

