import 'package:flutter/material.dart';
//Widgets
import './orderSunmmary.dart';

class ProductInfo {
  bool isExpanded;
  final String header;
  final String body;

  ProductInfo(
      {required this.header, required this.body, required this.isExpanded});
}

class ChoseDelivery extends StatefulWidget {
  @override
  _ChoseDeliveryState createState() => _ChoseDeliveryState();
}

class _ChoseDeliveryState extends State<ChoseDelivery> {
  int radioValue = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, bottom: 20),
            child: Text(
              "Chose Delivery Mode",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Transform.scale(
                    scale: 1.2,
                    child: Radio(
                      fillColor: MaterialStateProperty.all(Colors.black),
                      value: 1,
                      groupValue: radioValue,
                      onChanged: (value) {
                        setState(() {
                          radioValue = radioValue;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.car_rental,
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Express Delivery",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        child: Text(
                          "We will send an email with the shipping details after the order is dispatched.",
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          OrderSummary(),
        ],
      ),
    );
  }
}
