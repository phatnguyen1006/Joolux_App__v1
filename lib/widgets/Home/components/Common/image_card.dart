import 'package:flutter/material.dart';
import '../../../../models/products/products.dart';

import '../cookie_page.dart';
import '../../../Layout/app_pop_bar.dart';
import '../../../../constants/constants.dart';

class ImageGrid extends StatelessWidget {
  final List<Product> products;
  final count;
  const ImageGrid({Key? key, required this.products, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Scaffold(
                    appBar: appPopBar(context),
                    body: CookiePage(),
                  ),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: count,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: DefaultPadding,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) => imageIndex(index),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget imageIndex(index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: products[index].color,
              borderRadius: BorderRadius.circular(0),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Image.asset(products[index].image),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
