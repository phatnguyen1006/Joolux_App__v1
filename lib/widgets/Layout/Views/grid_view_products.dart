import 'package:flutter/material.dart';

// Components
import '../../../models/icons/icons.dart';
import '../../../models/WishList/fakeList.dart';
import '../../../widgets/product_details_page/details_page.dart';
import '../../../models/products/products.dart';
import '../../../../constants/constants.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: DefaultPadding / 2, right: DefaultPadding / 2),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: DefaultPadding / 5,
            crossAxisSpacing: DefaultPadding,
            childAspectRatio: 0.5,
          ),
          itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: products[index]),
                    )),
                wishList: true,
              )),
    );
  }
}

// Padding productGridView() {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
//     child: GridView.builder(
//         shrinkWrap: true,
//         //primary: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: products.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: DefaultPadding,
//           crossAxisSpacing: DefaultPadding,
//           childAspectRatio: 0.45,
//         ),
//         itemBuilder: (context, index) => ItemCard(
//             product: products[index],
//             press: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => DetailsScreen(product: products[index]),
//                 )))),
//   );
// }

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  final bool wishList;

  const ItemCard(
      {Key? key,
      required this.product,
      required this.press,
      required this.wishList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  wishList
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(MyIcon.heart),
                              color: Color(0xFF676E79),
                              onPressed: () {
                                wishListfake.add(FakeList(
                                  title:
                                      "Chanel Green Quilted Patent\nLeather Jumbo Classic Double Flag Bag",
                                  image: "assets/images/bag_2.png",
                                  condition: "Gently Used",
                                  price: 1234,
                                  name: "Fendi",
                                  size: "40",
                                  type: "Returnable item",
                                ));
                              },
                            ),
                          ],
                        )
                      : Container(),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(DefaultPadding),
                        child: Image.asset(
                          product.image,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: size.width / 3 - 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Chanel",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  product.description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
                Text("Est. Retail\$${product.price}"),
                const Text(
                  "\$4.503 40% off",
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
                const Text(
                  "\$3.003 EXTRA 33% off",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ],
            ),
          ),
          wishList
              ? Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Container(
                      width: size.width / 2, height: 0.3, color: Colors.black),
                )
              : Container(),
        ],
      ),
    );
  }
}
