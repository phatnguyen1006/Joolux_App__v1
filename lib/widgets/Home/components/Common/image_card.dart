import 'package:flutter/material.dart';
import '../../../../models/products/products.dart';
import '../../../product_details_page/details_page.dart';

import '../../../../constants/constants.dart';

Padding imageGrid() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
    child: GridView.builder(
        shrinkWrap: true,
        //primary: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length - 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: DefaultPadding,
          crossAxisSpacing: 10,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) => ImageCard(
            product: products[index],
            press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(product: products[index],),
                )))),
  );
}

class ImageCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ImageCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
