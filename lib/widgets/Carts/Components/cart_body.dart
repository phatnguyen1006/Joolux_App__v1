import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Components Widget
import './bottom_checkout_btn.dart';
import './list_item_cart.dart';
import './know_more.dart';
import './policy_cart.dart';
//models
import '../../../models/WishList/fakeList.dart';

class CartBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            ListItemCart(),
            KnowMore(),
            PolicyCart(),
          ],
        ),
        persistentFooterButtons: [
          BottomCheckoutBtn(),
        ],
      ),
    );
  }
}


// appBar: AppBar(
        //   automaticallyImplyLeading: false, //remove back button
        //   toolbarHeight: 80, // Set this height
        //   flexibleSpace: Container(
        //     color: Colors.grey.shade200,
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Container(
        //             margin: EdgeInsets.only(top: 10),
        //             padding: EdgeInsets.all(5),
        //             color: Colors.white,
        //             child: Text('One')),
        //         Expanded(
        //           child: Container(
        //             padding: EdgeInsets.symmetric(horizontal: 10),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text(
        //                   "${fakeCart.length.toString()} item(s) in yout cart",
        //                 ),
        //                 Text(
        //                   'Total: \$5000',
        //                   style: TextStyle(
        //                     color: Colors.black87,
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),


// Container(
            //   color: Colors.grey.shade400,
            //   padding: EdgeInsets.only(left: 15, bottom: 10),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.symmetric(vertical: 8),
            //         child: Text("SHIPMENT 1",
            //             style: TextStyle(letterSpacing: 0.7)),
            //       ),
            //       Text("Estimated Delivery: ...",
            //           style: TextStyle(letterSpacing: 0.7)),
            //     ],
            //   ),
            // ),