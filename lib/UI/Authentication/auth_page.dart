import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// widgets
import '../../widgets/Authentication/auth_page_widgets.dart';
// Routes to return
import '../../app_screen.dart';
// providers
import '../../providers/authentication/auth.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isAuth = Auth().isAuth;

  @override
  Widget build(BuildContext context) {
    return isAuth
        ? MyScreen(
            currentPage: 0,
          )
        : Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top,
                decoration: BoxDecoration(color: Colors.white),
                child: AuthPageWidget()),
          );
  }
}
