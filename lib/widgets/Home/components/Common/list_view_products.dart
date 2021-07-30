import 'package:flutter/material.dart';
import 'package:joolux_demo/models/icons/icons.dart';
import '../../../../models/products/products.dart';

import '../../../../constants/constants.dart';
import '../../../product_details_page/details_page.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        itemBuilder: (context, index) => ItemCard(
              product: products[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(product: products[index]),
                  )),
            ));
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        height: size.width / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(MyIcon.heart),
                  color: Color(0xFF676E79),
                  onPressed: () {
                    print("Clicked");
                  },
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: DefaultPadding/2, right: DefaultPadding/2),
                      child: Image.asset(
                        product.image,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Chanel",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          product.description,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                        Text("Est. Retail\$${product.price}"),
                        const Text(
                          "\$4.503 40% off",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        const Text(
                          "\$3.003 EXTRA 33% off",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Container(
                  width: size.width, height: 0.3, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
