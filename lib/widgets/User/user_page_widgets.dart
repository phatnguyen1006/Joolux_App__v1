import 'package:flutter/material.dart';
// widgets
import './user_app_bar.dart';
import './user_page_body.dart';

class UserPageWidget extends StatefulWidget {
  @override
  _UserPageWidgetState createState() => _UserPageWidgetState();
}

class _UserPageWidgetState extends State<UserPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: UserPageHeader(),
      body: UserPageBody(),
    );
    ;
  }
}
