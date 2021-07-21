import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class Auth with ChangeNotifier {
  late bool _isAuth = false;

  bool get isAuth {
    if (_isAuth != null) return _isAuth;
    return false;
  }

  void logIn() {
    _isAuth = true;
    // notifyListeners();
  }

  void logOut() {
    _isAuth = false;
    // notifyListeners();
  }
}
