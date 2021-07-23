import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// temp import
import 'package:joolux_demo/constants/constants.dart';
import 'package:joolux_demo/models/products/products.dart';

class SearchItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  final bool isEdit;

  const SearchItemCard(
      {Key? key,
      required this.product,
      required this.press,
      required this.isEdit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(DefaultPadding),
                    child: Image.asset(
                      product.image,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 8.0,
                top: 4.0,
                child: isEdit
                    ? SizedBox(
                        height: 20.0,
                        width: 20.0,
                        child: FittedBox(
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              onPressed: () {},
                              child: SvgPicture.asset(
                                  "assets/icons/clear-circle.svg",
                                  fit: BoxFit.fill,
                                  color: Color(0xFF545D68)),
                        )),
                      )
                    : Container(),
              ),
            ]),
          ),
          const Text(
            "Chanel",
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
