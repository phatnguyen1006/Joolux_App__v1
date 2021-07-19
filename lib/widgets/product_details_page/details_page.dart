import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Components Widget
import '../../models/products/products.dart';
import '../Home/components/Common/footer.dart';
import '../Layout/app_pop_bar.dart';
import 'Others/base_info_product.dart';
import 'Others/delivery_return_info.dart';
import 'Others/images_view_products.dart';
import 'Others/policy_info_product.dart';
import '../../models/products/poster.dart';
import '../../widgets/Home/components/Common/posters.dart';
import 'Others/similar_recently_products.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appPopBar(context),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Posters(poster: posters, number: 1),
          ProductState(),
          CarouseImagesSlider(
              imgProductList:
                  products.map((product) => product.image).toList()),
          BaseInfo(product: product, size: size),
          DeliveryReturnInfo(),
          AnimateExpanded(),
          SimilarRecentlyProducts(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 40,
              width: size.width,
              decoration: BoxDecoration(color: Color(0xFFECEFF1)),
            ),
          ),
          Footer(size: size),
        ],
      ),
      persistentFooterButtons: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(4)),
                  child: TextButton(
                      onPressed: () {
                        print("BUY NOW");
                      },
                      child: Text("BUY NOW",
                          style: TextStyle(color: Colors.black))),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: TextButton(
                      onPressed: () {
                        print("ADD TO BAG ");
                      },
                      child: Text(
                        "ADD TO BAG",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class ProductState extends StatelessWidget {
  const ProductState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFECEFF1)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                child: Text("WELL USED"),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Icon(
                    Icons.check_circle_outline,
                    color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 8.0),
                  child: Text(
                      "100% Authentic",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                      ),
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
