import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import '../../../models/products/sale_off.dart';
import '../../../models/products/products.dart';
// widgets
import '../components/Common/footer.dart';
import '../components/Common/image_card.dart';
import '../components/Common/sale_off_grid.dart';
import '../components/Common/swiper.dart';

// const
import '../../../constants/constants.dart';

class SaleBody extends StatelessWidget {
  const SaleBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Swipers(),
        Padding(
          padding: const EdgeInsets.only(top: DefaultPadding),
          child: SizedBox(
            width: size.width,
            height: size.height * 0.05,
            child: const Text(
              "Sale up to 90%",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SaleOff(sale: saleOff),
        SizedBox(
          height: 20,
        ),
        ImageGrid(products: products, count: 2),
        Footer(size: size),
      ],
    );
  }
}
