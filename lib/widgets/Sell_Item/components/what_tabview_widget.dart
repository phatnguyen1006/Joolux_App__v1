import 'package:flutter/material.dart';
//Widgets
import '../../Home/components/Common/image_card.dart';
import '../../../models/products/products.dart';

class ProductInfo {
  bool isExpanded;
  final String header;
  final String body;

  ProductInfo(
      {required this.header, required this.body, required this.isExpanded});
}

class WhatWidgets extends StatefulWidget {
  @override
  _WhatWidgetsState createState() => _WhatWidgetsState();
}

class _WhatWidgetsState extends State<WhatWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "What Can You Sell?",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                AnimateExpanded(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimateExpanded extends StatefulWidget {
  @override
  _AnimateExpandedState createState() => new _AnimateExpandedState();
}

class _AnimateExpandedState extends State<AnimateExpanded> {
  List<ProductInfo> _productinfo = <ProductInfo>[
    ProductInfo(
        header: "When Do You Get Paid?", body: "body", isExpanded: false),
    ProductInfo(header: "How Do You Get?", body: "body", isExpanded: false),
    ProductInfo(header: "How Do You Get?", body: "body", isExpanded: false),
    ProductInfo(header: "How Do You Get?", body: "body", isExpanded: false),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        children: _productinfo
            .map((info) => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                info.isExpanded = !info.isExpanded;
                              });
                            },
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                      height: 50,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            info.header,
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      )),
                                ),
                                Container(
                                  height: 50,
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: IconButton(
                                      icon: info.isExpanded
                                          ? Icon(Icons.add)
                                          : Icon(Icons.remove),
                                      onPressed: () {
                                        setState(() {
                                          info.isExpanded = !info.isExpanded;
                                        });
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          AnimatedContainer(
                            // constraints: BoxConstraints(
                            //     minHeight: 0, maxHeight: double.infinity),
                            // height: info.isExpanded ? 150 : 0,
                            width: size.width,
                            decoration: BoxDecoration(color: Colors.white),
                            duration: const Duration(milliseconds: 100),
                            child: info.isExpanded
                                ? SizedBox(
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: ImageGrid(
                                          products: products, count: 6),
                                    ),
                                  )
                                : SizedBox(
                                    height: 0,
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
            .toList());
  }
}
