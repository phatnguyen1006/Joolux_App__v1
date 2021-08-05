import 'package:flutter/material.dart';
// models
import '../../models/navigator_bar/tabs_item.dart';

class BottomBarNavigation extends StatelessWidget {
  BottomBarNavigation({required this.currentTab, required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(TabItem.home),
        _buildItem(TabItem.categories),
        _buildItem(TabItem.sellItems),
        _buildItem(TabItem.designer),
        _buildItem(TabItem.wishlist),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
      currentIndex: currentTab.index,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: tabName[tabItem]!.icon,
      label: tabName[tabItem]!.name,
    );
  }
}
