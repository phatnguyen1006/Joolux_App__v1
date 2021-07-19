import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';

// widgets

import '../components/Common/item_card.dart';
// const
import '../../../constants/constants.dart';

class NewArrivalBody extends StatelessWidget {
  const NewArrivalBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        ProductGridView(),
        Padding(
          padding: EdgeInsets.only(top: 15, right: 25, bottom: 20, left: 25),
          // width: size.width - DefaultPadding,
          // height: 50,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.grey.shade900),
              padding:
                  MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(25)),
            ),
            child: Text(
              'VIEW MORE ITEMS',
              style: TextStyle(
                  height: 1.0,
                  fontSize: 15,
                  letterSpacing: 0.8,
                  color: Colors.white),
            ),
            onPressed: () {
              print('VIEW MORE ITEMS');
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
