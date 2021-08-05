import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// helpers
// models
import './models/navigator_bar/tabs_item.dart';
import './models/navigator_bar/tabs_navigator.dart';
// widgets
import './widgets/Layout/bottom_bar.dart';
import './widgets/Layout/bottom_navigation_bar.dart';
import './widgets/Layout/floating_button.dart';
import './widgets/Layout/app_bar.dart';
// provider
import 'providers/authentication/auth.dart';

class AppScreen extends StatefulWidget {
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  var _currentTab = TabItem.home;
  final _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.categories: GlobalKey<NavigatorState>(),
    TabItem.sellItems: GlobalKey<NavigatorState>(),
    TabItem.designer: GlobalKey<NavigatorState>(),
    TabItem.wishlist: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // pop to first route
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentTab]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (_currentTab != TabItem.home) {
            // select 'main' tab
            _selectTab(TabItem.home);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        appBar: Header(
          currentPage: 0,
        ),
        body: Stack(children: <Widget>[
          _buildOffstageNavigator(TabItem.home),
          _buildOffstageNavigator(TabItem.categories),
          _buildOffstageNavigator(TabItem.sellItems),
          _buildOffstageNavigator(TabItem.designer),
          _buildOffstageNavigator(TabItem.wishlist),
        ]),
        // floatingActionButton: FloatingButton(onSelectTab: _selectTab),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBarNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: Navigator(
        key: _navigatorKeys[tabItem],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => tabBuilder[tabItem]!,
          );
        },
      ),
      // child: TabNavigator(
      //   navigatorKey: _navigatorKeys[tabItem],
      //   tabItem: tabItem,
      // ),
    );
  }
}
