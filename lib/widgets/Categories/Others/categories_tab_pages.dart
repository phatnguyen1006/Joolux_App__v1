import 'package:flutter/material.dart';

// Component Widgets
import 'categories_men_tab_page.dart';
import 'categories_tabbar.dart';
import 'categories_women_tab_page.dart';

class CategoriesTabPages extends StatefulWidget {
  const CategoriesTabPages({Key? key}) : super(key: key);

  @override
  _CategoriesTabPagesState createState() => _CategoriesTabPagesState();
}

class _CategoriesTabPagesState extends State<CategoriesTabPages>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5.0),
          CategoriesTabBar(
            tabController: tabController,
          ),
          Expanded(
            child: TabBarView(
                controller: tabController,
                children: [WomenTabPage(), MenTabPage()]),
          )
        ],
      ),
    );
  }
}
