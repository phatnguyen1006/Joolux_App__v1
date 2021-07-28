import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class Auth with ChangeNotifier {
  static bool _isAuth = false;
  late bool _isLoading;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final User? _user = FirebaseAuth.instance.currentUser;

  Auth() {
    if (_firebaseAuth.currentUser != null) {
      _isAuth = true;
    }
    _isLoading = false;
  }
  User? get user {
    return _user;
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

  // Future signInFacebook() async {
  //   isLoading = true;
  //   FacebookLogin facebookLogin = FacebookLogin();

  //   final result = await facebookLogin.logIn(['email']);
  //   final token = result.accessToken.token;
  //   // final graphResponse = await http.get(
  //   //     'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name&access_token=${token}');
  //   // print(graphResponse.body);
  //   if (result.status == FacebookLoginStatus.loggedIn) {
  //     final userCredential = await _firebaseAuth.signInWithCredential(
  //       FacebookAuthProvider.credential(token),
  //     );

  //     isLoading = false;
  //     isAuth = true;
  //     print(userCredential.user);
  //     return userCredential.user;
  //   } else if (result.status == FacebookLoginStatus.cancelledByUser) {
  //     isLoading = false;
  //     throw FirebaseAuthException(
  //       message: "Sign in aborted by user",
  //       code: "ERROR_ABORDER_BY_USER",
  //     );
  //   } else if (result.status == FacebookLoginStatus.error) {
  //     isLoading = false;
  //     throw FirebaseAuthException(
  //       message: result.errorMessage,
  //       code: "ERROR_ABORDER_BY_USER",
  //     );
  //   } else {
  //     isLoading = false;
  //     throw FirebaseAuthException(
  //       message: "Failed to Login by Facebook",
  //       code: "ERROR_ABORDER_BY_USER",
  //     );
  //   }
  // }

  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      // Create a credential from the access token
      final OAuthCredential credential =
          FacebookAuthProvider.credential(result.accessToken!.token);
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } else if (result.status == LoginStatus.cancelled) {
      isLoading = false;
      throw FirebaseAuthException(
        message: "Sign in aborted by user",
        code: "ERROR_ABORDER_BY_USER",
      );
    } else if (result.status == LoginStatus.failed) {
      isLoading = false;
      throw FirebaseAuthException(
        message: result.message,
        code: "ERROR_ABORDER_BY_USER",
      );
    } else {
      isLoading = false;
      throw FirebaseAuthException(
        message: "Failed to Login by Facebook",
        code: "ERROR_ABORDER_BY_USER",
      );
    }
  }

  Future<void> signOut() async {
    isAuth = false;
    final googleSignIn = GoogleSignIn();
    final facebookLogin = FacebookAuth.instance;
    await googleSignIn.signOut();
    // await googleSignIn.disconnect();
    await facebookLogin.logOut();
    await _firebaseAuth.signOut();
  }
}
