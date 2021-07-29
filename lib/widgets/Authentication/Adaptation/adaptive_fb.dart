import 'dart:io'; // super lib

import 'package:flutter/material.dart';
// widgets
import './fb_adaptive_android.dart';
import './fb_adaptive_ios.dart';

class FbApdaptive extends StatelessWidget {
  const FbApdaptive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(
          child: new Container(
              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: Divider(
                color: Colors.black,
                height: 50,
              )),
        ),
        Text(
          "OR",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: new Container(
              margin: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: Divider(
                color: Colors.black,
                height: 50,
              )),
        ),
      ]),
      Platform.isIOS ? FbIOS() : FbAndroid(),
    ]));
  }
}
