import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class Auth with ChangeNotifier {
  static bool _isAuth = false;

  bool get isAuth {
    return _isAuth;
  }

  void logIn() {
    _isAuth = true;
    notifyListeners();
  }

  void logOut() {
    _isAuth = false;
    notifyListeners();
  }
}
