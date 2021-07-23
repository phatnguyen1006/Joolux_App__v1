import 'package:flutter/material.dart';



import 'product_types_interface.dart';
import 'categories_choose_product_type_page.dart';


List<ProductType> productWomenTypes = [
  ProductType(
    productName: "BAGS",
    type: ["All Bags", "Clutches", "Evening Bags", "Everyday Bags", "Exotic bags", "Hobos", "Satchels", "Shoulder Bags", "Totes", "Wallets"],
    directToChooseProductTypePage: true
  ),
  ProductType(
      productName: "SHOES",
      type: ["All Shoes", "Boots", "Flats", "Pumps", "Sandals", "Sneakers", "Ballet Flats", "Platform Sandals", "Wedge Sandals", "Peep Toe Pumps", "Platform Pumps",
        "Ankle Boots", "Knee High Boots", "Over Knee Boots", "Mules", "Flat Sandals", "Flip Flop", "Slide Sandals", "Loafers", "High Top Sneakers", "Loafers & Moccasins",
        "Espadrilles", "Wedges", "Ankle Length Boots", "Knee Length Boots", "Wedge Sneakers", "Slip On Sneakers", "Lace Up Sneakers", "Low Top Sneakers", "Thongs", "Thigh High Boots"
      ],
      directToChooseProductTypePage: true
  ),
  ProductType(
      productName: "CLOTHING",
      type: ["All Clothing", "Dresses", "Jackets", "Jeans & Denim", "Sweaters & Knitwear", "Coats", "Shorts", "Skirts", "Suits", "Tops", "Pants"],
      directToChooseProductTypePage: true
  ),
  ProductType(
      productName: "FINE JEWELRY",
      type: ["All Fine Jewelry", "Bracelets", "Charms and Pendants", "Earrings", "Necklaces", "Rings"],
      directToChooseProductTypePage: true
  ),
  ProductType(
      productName: "WATCHES",
      type: [],
      directToChooseProductTypePage: false
  ),
  ProductType(
      productName:  "ACCESSORIES",
      type: ["All Accessories", "Fashion and Silver Jewelry", "Scarves", "Women's Belts", "Women's Sunglasses", "Women's Tech Accessories"],
      directToChooseProductTypePage: true
  ),
  ProductType(
      productName: "HOMEWARE",
      type: [],
      directToChooseProductTypePage: false
  ),
] ;

class WomenTabPage extends StatelessWidget {

  const WomenTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      primary: true,
      children: productWomenTypes.map(
        (productType) =>  GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                productType.directToChooseProductTypePage ? ChooseProductTypes(productType: productType,) : ChooseProductTypes(productType: productType,),
              )),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              height: 200,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.grey
              ),
              child: Center(
                child: Text(
                  productType.productName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        )
      ).toList(),
    );
  }
}
