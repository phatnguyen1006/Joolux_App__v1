import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import '../../../models/products/poster.dart';
import '../../../models/products/products.dart';
import '../../../models/products/sale_off.dart';
// widgets
import '../components/Common/footer.dart';
import '../components/Common/item_card.dart';
import '../components/Common/image_card.dart';
import '../components/Common/posters.dart';
import '../components/Common/sale_off_grid.dart';
import '../components/Common/swiper.dart';
import '../components/Others/for_people.dart';
// const
import '../../../constants/constants.dart';

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
        ImageGrid(products: products, count: 4),
        SizedBox(
          height: 20,
        ),
        Posters(poster: posters, number: 3),
        Padding(
          padding: const EdgeInsets.only(top: DefaultPadding),
          child: SizedBox(
            width: size.width,
            height: size.height * 0.05,
            child: const Text(
              "SALE! Up To 90% Off!",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SaleOff(sale: saleOff),
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
        productGridView(),
        Footer(size: size),
      ],
    );
  }
}
