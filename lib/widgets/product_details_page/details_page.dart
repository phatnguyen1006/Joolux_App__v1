import 'package:flutter/material.dart';
import '../Layout/app_pop_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          ExpandingItems()
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
    ProductInfo(header: "header", body: "body", isExpanded: false),
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
