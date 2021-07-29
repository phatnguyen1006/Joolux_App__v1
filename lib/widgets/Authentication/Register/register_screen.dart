import 'package:flutter/material.dart';
// utls
import './register_form.dart';
import '../Adaptation/adaptive_fb.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          RegisterForm(),
          FbApdaptive(),
        ],
      ),
    );
  }
}
