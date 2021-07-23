import 'package:flutter/material.dart';
import '../../widgets/Sell_Item/Sell_item_widgets.dart';

class SellItemPage extends StatefulWidget {
  const SellItemPage({Key? key}) : super(key: key);

  @override
  _SellItemPageState createState() => _SellItemPageState();
}

class _SellItemPageState extends State<SellItemPage> {
  @override
  Widget build(BuildContext context) {
    return SellItemWidgets();
  }
}
