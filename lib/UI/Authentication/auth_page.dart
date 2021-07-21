import 'package:flutter/material.dart';
// Routes to return
import '../../app_screen.dart';
// providers
import '../../providers/auth.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: TextButton(
          child: Text("Log In"),
          onPressed: () {
            Auth().logIn();
            print(Auth().isAuth);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyScreen(
                      currentPage: 4,
                    )));
          },
        ));
  }
}
