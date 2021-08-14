import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Components Widget

//models

class PolicyCart extends StatelessWidget {
  const PolicyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade400,
      padding: EdgeInsets.only(top: 30, left: 10, right: 0, bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Icon(Icons.car_rental_sharp),
                      Text("Easy Shippment"),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Icon(Icons.car_rental_sharp),
                      Text("Easy Shippment"),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Icon(Icons.car_rental_sharp),
                    Text("Easy Shippment"),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Icon(Icons.car_rental_sharp),
                    Text("Easy Shippment"),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 30, bottom: 10),
            child: Text(
              "We are here to help you!",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.phone),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      child: Text(
                        '0123456789',
                        style: TextStyle(
                          height: 1.0,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        print("call me");
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.app_blocking),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      child: Text(
                        'WhatsApp Us',
                        style: TextStyle(
                          height: 1.0,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        print("chat me");
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              "Saturday to Thurday 9 am to 12 midnight (GST)",
              style: TextStyle(fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
