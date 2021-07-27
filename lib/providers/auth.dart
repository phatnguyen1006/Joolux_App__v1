import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth with ChangeNotifier {
  static bool _isAuth = false;
  late bool _isLoading;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Auth() {
    if (_firebaseAuth.currentUser != null) {
      _isAuth = true;
    }
    _isLoading = false;
  }
  bool get isAuth {
    return _isAuth;
  }

  bool get isLoading => _isLoading;

  set isAuth(bool isAuth) {
    _isAuth = isAuth;
    notifyListeners();
  }

  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  Future signInGoogle() async {
    isLoading = true;

    final googleSignIn = GoogleSignIn();
    final googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      if (googleAuth.idToken != null) {
        final userCredential = await _firebaseAuth.signInWithCredential(
          GoogleAuthProvider.credential(
              idToken: googleAuth.idToken, accessToken: googleAuth.accessToken),
        );

        isLoading = false;
        isAuth = true;
        return userCredential.user;
      }
    } else {
      isLoading = false;
      throw FirebaseAuthException(
        message: "Sign in aborted by user",
        code: "ERROR_ABORDER_BY_USER",
      );
    }
  }

  Future<void> signOut() async {
    isAuth = false;
    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
    await googleSignIn.disconnect();
    await _firebaseAuth.signOut();
  }
}
