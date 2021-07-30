import 'package:flutter/material.dart';
// widgets
import '../../widgets/User/user_page_widgets.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return UserPageWidget();
  }
}
