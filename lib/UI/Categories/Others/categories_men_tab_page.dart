import 'package:flutter/material.dart';


import 'categories_choose_product_type_page.dart';
import 'product_types_interface.dart';


List<ProductType> productMenTypes = [
  ProductType(
    productName: "WATCHES",
    type: [],
    directToChooseProductTypePage: false
  ),
  ProductType(
      productName: "SHOES",
      type: [],
      directToChooseProductTypePage: true
  ),
  ProductType(
      productName: "CLOTHING",
      type: [],
      directToChooseProductTypePage: true
  ),
  ProductType(
      productName: "BAGS",
      type: [],
      directToChooseProductTypePage: true
  ),
  ProductType(
      productName: "ACCESSORIES",
      type: [],
      directToChooseProductTypePage: true
  ),ProductType(
      productName: "HOMEWARE",
      type: [],
      directToChooseProductTypePage: false
  ),
];

class MenTabPage extends StatelessWidget {

  const MenTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: productMenTypes.map(
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
