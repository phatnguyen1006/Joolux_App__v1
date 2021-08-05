import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:localstorage/localstorage.dart';
// callback
import './_basicAuth.dart' as basicAuth;

class Auth with ChangeNotifier {
  static bool _isAuth = false;
  late bool _isLoading;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final User? _user = FirebaseAuth.instance.currentUser;
  // init localStorage
  final LocalStorage storage = new LocalStorage('joolux_app');

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

  // store into LocalStorage
  Future<void> _setStorage(String? accessToken,
      {String refreshToken = ''}) async {
    await storage.setItem('accessToken', accessToken);
    await storage.setItem('refreshToken', refreshToken);
  }

  // clear LocalStorage
  Future<void> _clearStorage() async {
    // await storage.deleteItem();
    await storage.clear();
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
        await _setStorage(googleAuth.accessToken);
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

  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      // Create a credential from the access token
      final OAuthCredential credential =
          FacebookAuthProvider.credential(result.accessToken!.token);
      // Once signed in, return the UserCredential
      await _setStorage(result.accessToken!.token);
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

  // original Sign In And SignUp
  Future<void> signIn(data) async {
    // data = {
    //   username: 'admin',
    //   password: 'admin123',
    // }

    Map<String, dynamic> response = await basicAuth.originalSignIn(data);
    if (response != null) {
      // accessToken && refreshToken
      await _setStorage(response['accessToken'],
          refreshToken: response['refreshToken']);
      var a = storage.getItem('accessToken');
      print(a);
    } else {
      throw {
        'message': 'Something went wrong!!!',
        'status': 400,
      };
    }
  }

  Future<void> signUp(data) async {
    // data = {
    //   username: 'admin',
    //   password: 'admin123',
    //   fullname: I Am admin,
    //   email: client2@test.com,
    //   phoneNumber: 0123456727,
    // }

    Map<String, dynamic> response = await basicAuth.originalSignUp(data);
    if (response != null) {
      // accessToken && refreshToken
      await _setStorage(response['accessToken'],
          refreshToken: response['refreshToken']);
    } else {
      throw {
        'message': 'Something went wrong!!!',
        'status': 400,
      };
    }
  }
  // ---

  Future<void> signOut() async {
    isAuth = false;
    final googleSignIn = GoogleSignIn();
    final facebookLogin = FacebookAuth.instance;
    await googleSignIn.signOut();
    // await googleSignIn.disconnect();
    await facebookLogin.logOut();
    await _firebaseAuth.signOut();
    await _clearStorage();
  }
}
