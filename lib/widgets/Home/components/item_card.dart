import 'package:flutter/material.dart';
import 'package:joolux_demo/models/icons/icons.dart';
import '/models/products/products.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press
  }) : super(key: key);

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
              //padding: const EdgeInsets.all(DefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(DefaultPadding / 5),
                    child: Row(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(DefaultPadding),
                    child: Image.asset(product.image),
                  ),
                ],
              ),
            ),
          ),
          const Text(
            "Chanel",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
              "Chanel Green Quilted Patent\nLeather Jumbo Classic Double Flag Bag"),
          Text("Est. Retail\$${product.price}"),
          const Text(
            "\$4.503 40% off",
            style: TextStyle(decoration: TextDecoration.lineThrough),
          ),
          const Text(
            "\$3.003 EXTRA 33% off",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Container(width: size.width / 2, height: 0.3, color: Colors.black),
        ],
      ),
    );
  }
}
