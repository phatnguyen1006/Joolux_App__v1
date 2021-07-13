import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';

import "package:joolux_demo/constants.dart";
import '../../../models/products/products.dart';

import '../../../models/icons/icons.dart';
import '../components/Common/item_card.dart';
import '../components/Common/image_card.dart';
import '../components/Common/posters.dart';
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
        SizedBox(
          height: 10,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: GridView.builder(
              shrinkWrap: true,
              //primary: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: posters.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                childAspectRatio: 1.9,
              ),
              itemBuilder: (context, index) => Posters(
                  poster: posters[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      )))),
        ),
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
        Padding(
          padding: const EdgeInsets.only(top: DefaultPadding),
          child: SizedBox(
            width: size.width,
            height: size.height * 0.03,
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
                constraints: const BoxConstraints(
                    minHeight: 0.0, maxHeight: double.infinity),
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
                constraints: const BoxConstraints(
                    minHeight: 0.0, maxHeight: double.infinity),
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
                constraints: const BoxConstraints(
                    minHeight: 0.0, maxHeight: double.infinity),
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
                constraints: const BoxConstraints(
                    minHeight: 0.0, maxHeight: double.infinity),
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
