import 'package:flutter/material.dart';


// Components Widget
import '../../../models/products/products.dart';
import '../../../widgets/Home/components/Common/item_card.dart';

import '../details_page.dart';


class SimilarRecentlyProducts extends StatelessWidget {
  const SimilarRecentlyProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          height: 50,
          decoration: BoxDecoration(color: Color(0xFFECEFF1)),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Similar Products",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        ),
        Container(
          height: size.width,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder:  (context, index) => Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(product: products[index]),
                    )),
                wishList: false,
              ),
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 1.8,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Container(
            width: size.width,
            height: 80,
            decoration: BoxDecoration(color: Color(0xFFECEFF1)),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "Recently Products",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
        ),
        Container(
          height: size.width,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder:  (context, index) => Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(product: products[index]),
                    )),
                wishList: false,
              ),
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 1.8,
            ),
          ),
        ),
      ],
    );
  }
}
