import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// _Firebase
import '../../../providers/authentication/auth.dart';

class GoogleSigninButton extends StatelessWidget {
  const GoogleSigninButton({Key? key}) : super(key: key);
  Future<void> _signIn() async {
    await Auth().signInGoogle();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        width: (MediaQuery.of(context).size.width / 2) - 20,
        child: OutlineButton.icon(
          onPressed: _signIn,
          icon: Image.asset(
            "assets/images/google_logo.png",
            fit: BoxFit.contain,
          ),
          label: Text(
            "Via Google",
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
          // shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          highlightedBorderColor: Colors.red,
          borderSide: BorderSide(color: Colors.red),
          textColor: Colors.red,
        ));
  }
}
