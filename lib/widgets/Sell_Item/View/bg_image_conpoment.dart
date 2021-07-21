import "package:flutter/material.dart";

class BgImageContent extends StatelessWidget {
  const BgImageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/cookievan.jpg'), fit: BoxFit.cover)),
    );
  }
}
