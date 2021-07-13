import 'package:flutter/material.dart';
import '../../../../models/products/products.dart';

import '../../../../constants.dart';

class ImageCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ImageCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: Image.asset(product.image),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
