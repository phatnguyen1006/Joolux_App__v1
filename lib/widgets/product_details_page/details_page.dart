import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Components Widget
import '../../models/products/products.dart';
import '../Home/components/Common/footer.dart';
import '../Layout/app_pop_bar.dart';
import 'Others/base_info_product.dart';
import 'Others/policy_info_product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

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
          BaseInfo(product: product, size: size),
          ExpandingItems(),
          AnimateExpanded(),
          Footer(size: size)
        ],
      ),
    );
  }
}

