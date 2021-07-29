import 'package:flutter/material.dart';
// widgets
import '../FB_Button/fb_signin_button.dart';

class FbIOS extends StatelessWidget {
  const FbIOS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GoogleSigninButton(),
          SizedBox(width: 5),
          FacebookSigninButton(),
        ],
      ),
      SizedBox(height: 10),
      AppleSigninButton()
    ]));
  }
}
