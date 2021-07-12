import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';

import "package:joolux_demo/constants.dart";
import '../../../models/products/products.dart';

import '../../../models/icons/icons.dart';
import '../components/item_card.dart';
import '../../product_details_screen/details_screen.dart';

import "../../../constants.dart";



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
        ),
        Padding(
          padding: const EdgeInsets.only(top: DefaultPadding / 2),
          child: SizedBox(
            width: size.width,
            height: size.height * 0.05,
            child: const Text(
              "You Can Always Count On Us",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 4),
              child: Container(
                constraints: const BoxConstraints(minHeight: 0.0,maxHeight: double.infinity),
                width: size.width,
                color: Color(0xFFECEFF1),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(MyIcon.heart),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Unique Luxury Pieces",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: const Text(
                                "Extensive luxury collection where each item is unique & high on fashionExtensive luxury collection where each item is unique & high on fashion",
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 4),
              child: Container(
                constraints: const BoxConstraints(minHeight: 0.0,maxHeight: double.infinity),
                width: size.width,
                color: Color(0xFFECEFF1),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(MyIcon.heart),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Unique Luxury Pieces",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: const Text(
                                "Extensive luxury collection where each item is unique & high on fashion",
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 4),
              child: Container(
                constraints: const BoxConstraints(minHeight: 0.0,maxHeight: double.infinity),
                width: size.width,
                color: Color(0xFFECEFF1),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(MyIcon.heart),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Unique Luxury Pieces",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: const Text(
                                "Extensive luxury collection where each item is unique & high on fashion",
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 4),
              child: Container(
                constraints: const BoxConstraints(minHeight: 0.0,maxHeight: double.infinity),
                width: size.width,
                color: Color(0xFFECEFF1),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(MyIcon.heart),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Unique Luxury Pieces",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: const Text(
                                "Extensive luxury collection where each item is unique & high on fashion",
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
