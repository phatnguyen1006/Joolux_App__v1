import 'package:flutter/material.dart';
//Widgets
import './View/bg_image_conpoment.dart';
import './View/tabview_component.dart';

// Widgets

class SellItemWidgets extends StatefulWidget {
  @override
  _SellItemWidgetsState createState() => _SellItemWidgetsState();
}

class _SellItemWidgetsState extends State<SellItemWidgets>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        BgImageContent(),
        TabViewWidgets(),
      ],
    );
  }
}