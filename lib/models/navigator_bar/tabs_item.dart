import 'package:flutter/material.dart';
// routes Builders
import '../../UI/Home/home_page.dart';
import '../../UI/Categories/categories_page.dart';
import '../../UI/Designer/designer_page.dart';
import '../../UI/User/wishlist_page.dart';
import '../../UI/ItemSell/sell_item_page.dart';
// icon
import '../icons/icons.dart';

enum TabItem { home, categories, sellItems, designer, wishlist }

// interface
// ignore: camel_case_types
class iTabItem {
  final String name;
  final Icon icon;

  iTabItem({
    required this.name,
    required this.icon,
  });
}

Map<TabItem, iTabItem> tabName = {
  TabItem.home: iTabItem(name: 'Home', icon: Icon(Icons.home)),
  TabItem.categories:
      iTabItem(name: 'Categories', icon: Icon(Icons.layers_rounded)),
  TabItem.sellItems: iTabItem(name: 'SellItems', icon: Icon(null)),
  TabItem.designer:
      iTabItem(name: 'Designer', icon: Icon(Icons.fireplace_rounded)),
  TabItem.wishlist: iTabItem(name: 'Designer', icon: Icon(MyIcon.heart)),
};

Map<TabItem, Widget> tabBuilder = {
  TabItem.home: MyHomePage(),
  TabItem.categories: CategoriesPage(),
  TabItem.sellItems: SellItemPage(),
  TabItem.designer: DesignerPage(),
  TabItem.wishlist: WishlistPage(),
};
