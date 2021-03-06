import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FacebookSigninButton extends StatelessWidget {
  const FacebookSigninButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        width: (MediaQuery.of(context).size.width / 2) - 20,
        child: OutlineButton.icon(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/facebook_logo.png',
            fit: BoxFit.contain,
          ),
          label: Text(
            "Via Facebook",
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
          // shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          highlightedBorderColor: Colors.blue,
          borderSide: BorderSide(color: Colors.blue.shade900),
          textColor: Colors.blue.shade900,
        ));
  }
}
