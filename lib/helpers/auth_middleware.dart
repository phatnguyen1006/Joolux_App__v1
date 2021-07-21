import 'package:flutter/material.dart';
// isAuth
import '../providers/auth.dart';
// authentication screen
import '../UI/Authentication/auth_page.dart';

// ignore: must_be_immutable
class AuthMiddleware extends StatefulWidget {
  final Widget destScreen;
  bool _isAuth = Auth().isAuth;

  AuthMiddleware({required this.destScreen});

  static _AuthMiddlewareState? of(BuildContext context) =>
      context.findAncestorStateOfType<_AuthMiddlewareState>();

  @override
  _AuthMiddlewareState createState() => _AuthMiddlewareState();
}

class _AuthMiddlewareState extends State<AuthMiddleware> {
  Future<dynamic>? pushConditionally(
          BuildContext context, Route<dynamic> route) =>
      !widget._isAuth
          ? Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AuthPage()),
            )
          : Navigator.push(
              context,
              route,
            );

  @override
  Widget build(BuildContext context) => widget.destScreen;
}
