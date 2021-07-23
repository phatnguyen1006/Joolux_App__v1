import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppleSigninButton extends StatelessWidget {
  const AppleSigninButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white),
        height: 55,
        width: (MediaQuery.of(context).size.width / 2) - 20,
        child: OutlineButton.icon(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/apple.png',
            fit: BoxFit.contain,
            colorBlendMode: BlendMode.clear,
          ),
          label: Text(
            "Via AppleID",
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          highlightedBorderColor: Colors.black,
          borderSide: BorderSide(color: Colors.black),
          textColor: Colors.black,
        ));
  }
}
