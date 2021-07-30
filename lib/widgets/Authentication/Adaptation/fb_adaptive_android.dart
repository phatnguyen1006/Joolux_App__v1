import 'package:flutter/material.dart';
// widgets
import '../FB_Button/fb_signin_button.dart';

class FbAndroid extends StatelessWidget {
  const FbAndroid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GoogleSigninButton(),
        SizedBox(width: 5),
        FacebookSigninButton(),
      ],
    ));
  }
}
