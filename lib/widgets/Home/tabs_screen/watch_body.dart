import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import '../../../models/products/poster.dart';
import '../../../models/products/products.dart';
// widgets
import '../components/Common/footer.dart';
import '../components/Common/image_card.dart';
import '../components/Common/posters.dart';
// const
import '../../../constants/constants.dart';

class WatchBody extends StatelessWidget {
  const WatchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        GestureDetector(
          onTap: () {
            print("Redirecting to sell item");
          },
          child: Padding(
            padding: const EdgeInsets.only(top: DefaultPadding),
            child: SizedBox(
              width: size.width,
              height: size.height * 0.05,
              child: const Text(
                "Sell Your Preloved Items With Us Today! SELL NOW",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Posters(poster: posters, number: 2),
        Padding(
          padding: const EdgeInsets.only(top: DefaultPadding),
          child: SizedBox(
            width: size.width,
            height: size.height * 0.05,
            child: const Text(
              "Top Brands",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        ImageGrid(products: products, count: 4),
        SizedBox(
          height: 20,
        ),
        Posters(poster: posters, number: 3),
        SizedBox(
          height: 20,
        ),
        ImageGrid(products: products, count: 2),
        Footer(size: size),
      ],
    );
  }
}
