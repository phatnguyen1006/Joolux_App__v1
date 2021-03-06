import 'package:flutter/material.dart';

class ProductInfo {
  bool isExpanded;
  final String header;
  final String body;

  ProductInfo(
      {required this.header, required this.body, required this.isExpanded});
}

class ExpandingItems extends StatefulWidget {
  ExpandingItems({Key? key}) : super(key: key);

  @override
  _ExpandingItemsState createState() => _ExpandingItemsState();
}

class _ExpandingItemsState extends State<ExpandingItems> {
  List<ProductInfo> _productinfo = <ProductInfo>[
    ProductInfo(
        header: "header",
        body:
            "TiledjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjdjddjdddddddddddddddddddddddddddddddddddddTiledjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjdjddjddddddddddddddddddddddddddddddddddddd",
        isExpanded: true),
    ProductInfo(header: "header", body: "body", isExpanded: false),
    ProductInfo(header: "header", body: "body", isExpanded: false),
    ProductInfo(header: "header", body: "body", isExpanded: false),
    ProductInfo(header: "header", body: "body", isExpanded: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Container(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) => setState(() {
            _productinfo[index].isExpanded = !isExpanded;
          }),
          children: _productinfo
              .map((info) => ExpansionPanel(
                  backgroundColor: Colors.white38,
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) {
                    return Text(info.header);
                  },
                  isExpanded: info.isExpanded,
                  body: Container(
                    child: Text(info.body),
                  )))
              .toList(),
        ),
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
    ProductInfo(header: "Product Information", body: "body", isExpanded: true),
    ProductInfo(header: "Item Condition", body: "body", isExpanded: false),
    ProductInfo(header: "Shipping & Payment", body: "body", isExpanded: false),
    ProductInfo(header: "Verified Authenticity", body: "body", isExpanded: false),
    ProductInfo(header: "Warranty & Return", body: "body", isExpanded: false),
  ];
  double _bodyHeight = 0.0;

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
                            height: size.height/20,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                              child: Text(info.header),
                            )),
                      ),
                      Container(
                        height: size.height/20,
                        decoration: BoxDecoration(color: Colors.white),
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
                  height: info.isExpanded ? 150 : 0,
                  width: size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  duration: const Duration(milliseconds: 100),
                  child: Text(
                      "hdkhaskdjhaksdkashsadadaadsdasdsaaddaasdasda"),
                ),
                Container(
                  height: 3,
                  width: size.width,
                  decoration: BoxDecoration(
                      color:  Color(0xFFECEFF1)
                  ),
                )
              ],
            ))
            .toList());
  }
}
