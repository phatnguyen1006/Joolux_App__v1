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
        imageGrid(),
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
        itemGridView(),
        Footer(size: size),
      ],
    );
  }

}
