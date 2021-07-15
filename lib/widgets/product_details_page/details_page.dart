import 'package:flutter/material.dart';
import '../Home/components/Common/footer.dart';
import '../Layout/app_pop_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: appPopBar(context),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Container(
            width: size.width,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          ExpandingItems(),
          AnimateExpanded(),
          Footer(size: size)
        ],
      ),
    );
  }
}

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
    ProductInfo(header: "header", body: "body", isExpanded: true),
    ProductInfo(header: "header", body: "body", isExpanded: false),
    ProductInfo(header: "header", body: "body", isExpanded: false),
    ProductInfo(header: "header", body: "body", isExpanded: false),
    ProductInfo(header: "header", body: "body", isExpanded: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) =>
              setState(() {
                _productinfo[index].isExpanded = !isExpanded;
              }),
          children: _productinfo
              .map((info) =>
              ExpansionPanel(
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
    ProductInfo(header: "header", body: "body", isExpanded: true),
    ProductInfo(header: "header", body: "body", isExpanded: false),
    ProductInfo(header: "header", body: "body", isExpanded: false),
    ProductInfo(header: "header", body: "body", isExpanded: false),
    ProductInfo(header: "header", body: "body", isExpanded: false),
  ];
  double _bodyHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _productinfo.map(
            (info) =>  GestureDetector(
              onTap: () {
                setState(() {
                  info.isExpanded = !info.isExpanded;
                });
              },
              child: new Card(
                child: new AnimatedContainer(
                  height: info.isExpanded ? 150.0 : 50.0,
                  duration: const Duration(milliseconds: 100),
                  child: Column(
                    children: [
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(info.header),
                          new IconButton(
                            icon: info.isExpanded
                                ? new Icon(Icons.add)
                                : new Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                info.isExpanded = !info.isExpanded;
                              });
                            },
                          )
                        ],
                      ),
                      Container(
                        child: Expanded(
                            child: const Text(
                                "Tiledjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjdjddjddddddddddddddddddddddddddddddddddddd")),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ).toList()
      ),
    );
  }
}
