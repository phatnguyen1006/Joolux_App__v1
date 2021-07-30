import 'package:flutter/material.dart';
// utls
import './login_form.dart';
import '../Adaptation/adaptive_fb.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          LoginForm(),
          FbApdaptive(),
        ],
      ),
    );
  }
}
