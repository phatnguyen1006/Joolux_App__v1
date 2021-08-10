import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
// provider
import '../../providers/authentication/auth.dart';
// widget
import '../../UI/Authentication/auth_page.dart';

class AuthMiddleware extends StatelessWidget {
  final Widget dest;

  AuthMiddleware({required this.dest});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Auth(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider = Provider.of<Auth>(context);
            if (provider.isAuth) {
              return dest;
            } else if (provider.isLoading) {
              return _buildLoading();
            } else if (snapshot.hasData) {
              return dest;
            } else {
              return AuthPage();
            }
          },
        ));
  }

  Widget _buildLoading() => Stack(
        fit: StackFit.expand,
        children: [
          AuthPage(),
          Center(child: CircularProgressIndicator()),
        ],
      );
}
