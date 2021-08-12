import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

// widgets
import '../../models/WishList/fakeList.dart';
import 'Components/empty_cart.dart';
import '../../widgets/Layout/app_pop_bar.dart';
// import '../../models/products/products.dart';
// import '../product_details_page/details_page.dart';
import 'Components/info_item_cart.dart';
import './Components/cart_body.dart';

class CartsWidgets extends StatefulWidget {
  @override
  _CartsWidgetsState createState() => _CartsWidgetsState();
}

class _CartsWidgetsState extends State<CartsWidgets> {
  // List<FakeList> fakeList = <FakeList>[];

  // @override
  // void initState() {
  //   super.initState();

  //   setState(() {
  //     fakeList = fakeCart;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appPopBar(context, "Cart"),
      body: fakeCart.length > 0 ? CartBody() : EmptyCart(),
    );
  }
}

void showCustomDialog(BuildContext context) => showDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) => new AlertDialog(
          title: new Text("Duty/Taxes May Apply"),
          content:
              new Text("Duty/Taxes May Apply\nShipping & Insurance Included"),
          actions: <Widget>[
            TextButton(
              child: Text(
                'OK',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));
