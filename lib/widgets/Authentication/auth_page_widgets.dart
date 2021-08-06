import 'package:flutter/material.dart';
// widget
import './top_poster.dart';
import './auth_tab_bar.dart';
import './Login/login_screen.dart';
import './Register/register_screen.dart';

class AuthPageWidget extends StatefulWidget {
  const AuthPageWidget({Key? key}) : super(key: key);

  @override
  _AuthPageWidgetState createState() => _AuthPageWidgetState();
}

class _AuthPageWidgetState extends State<AuthPageWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AuthTopPoster(),
        AuthTabBar(_tabController),
        Expanded(
          child: Container(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                LoginBody(),
                RegisterBody(),
              ])),
        )
      ],
    );
  }
}
