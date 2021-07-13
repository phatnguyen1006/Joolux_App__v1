import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';

import '../components/Common/footer.dart';
import '../../../models/products/products.dart';

import '../components/Common/item_card.dart';
import '../components/Common/image_card.dart';
import '../components/Common/posters.dart';
import '../components/Common/swiper.dart';
import '../../product_details_page/details_page.dart';
import '../components/Others/for_people.dart';

import "../../../constants.dart";

class DiscoveryBody extends StatelessWidget {
  const DiscoveryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Swipers(),
        SizedBox(
          height: 20,
        ),
        Padding(
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
                        builder: (context) => DetailsScreen(),
                      )))),
        ),
        SizedBox(
          height: 20,
        ),
        Posters(),
        SizedBox(
          height: 20,
        ),
        ForPeople(typePeople: 'MEN'),
        ForPeople(typePeople: "WOMEN"),
        SizedBox(
          height: 20,
        ),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
          child: GridView.builder(
              shrinkWrap: true,
              //primary: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: DefaultPadding,
                crossAxisSpacing: DefaultPadding,
                childAspectRatio: 0.45,
              ),
              itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      )))),
        ),
        Footer(size: size),
      ],
    );
  }
}
