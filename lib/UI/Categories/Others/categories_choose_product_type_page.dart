import 'package:flutter/material.dart';

import 'product_types_interface.dart';
import '../../../widgets/Layout/app_pop_bar.dart';

class ChooseProductTypes extends StatelessWidget {
  final ProductType productType;

  const ChooseProductTypes({Key? key, required this.productType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appPopBar(context, productType.productName),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: 0.2,
            decoration: BoxDecoration(color: Colors.black),
          ),
          Flexible(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: productType.type
                      .map((type) => GestureDetector(
                            onTap: () {
                              print("$type");
                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: 40,
                              width: size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  type,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                )),
          ),
        ],
      ),
    );
  }
}
