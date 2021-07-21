import 'package:flutter/material.dart';
import './View/bg_image_conpoment.dart';

// Widgets

class SellItemWidgets extends StatefulWidget {
  @override
  _SellItemWidgetsState createState() => _SellItemWidgetsState();
}

class _SellItemWidgetsState extends State<SellItemWidgets>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BgImageContent();
  }
}
