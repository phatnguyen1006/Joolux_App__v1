import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import "../../../constants.dart";
import '../../../models/products/products.dart';
import '../../../models/icons/icons.dart';
import '../components/item_card.dart';

class DiscoveryBody extends StatelessWidget {
  const DiscoveryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: DefaultPadding / 2),
          child: SizedBox(
            width: size.width,
            height: size.height * 0.05,
            child: const Text(
              "Editor's Picks",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: DefaultPadding,
                crossAxisSpacing: DefaultPadding,
                childAspectRatio: 0.45,
              ),
              itemBuilder: (context, index) =>
                  ItemCard(product: products[index])),
        )),
      ],
    );
  }
}
