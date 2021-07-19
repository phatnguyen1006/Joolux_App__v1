import 'package:flutter/material.dart';
import '../../../models/products/products.dart';



class BaseInfo extends StatelessWidget {
  final Product product;
  final Size size;

  const BaseInfo({Key? key, required this.product, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFECEFF1)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: product.title,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text:
                            "\n\nChanel Green Quilted Patent Leather Jumbo Classic Double Flag Bag",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          TextSpan(
                            text: "\nEst. Retail \$${product.price}",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          TextSpan(
                            text: "\n\$4.503 40% off",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                decoration: TextDecoration.lineThrough),
                          ),
                          TextSpan(
                            text: "\n\$3.003 EXTRA 33% off",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                            ),
                          ),
                        ])),
                    Row(
                      children: [
                        Text(
                          "Duty/Taxes May Apply",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.circle_notifications),
                          color: Color(0xFF676E79),
                          onPressed: () {
                            showCustomDialog(context);
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text("Final Price: \$894. Use Voucher Code: EID21",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.cabin),
                        color: Color(0xFF676E79),
                        onPressed: () {
                          print("Clicked");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.cabin),
                        color: Color(0xFF676E79),
                        onPressed: () {
                          print("Clicked");
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [IconButton(
                      icon: Icon(Icons.cabin),
                      color: Color(0xFF676E79),
                      onPressed: () {
                        print("Clicked");
                      },
                    ), Text(
                      "Express Shipping",
                      style: TextStyle(
                          fontSize: 12
                      ),
                    )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

void showCustomDialog(BuildContext context) => showDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) => new AlertDialog(
      title: new Text("Duty/Taxes May Apply"),
      content: new Text("Duty/Taxes May Apply\nShipping & Insurance Included"),
      actions: <Widget>[
        TextButton(
          child: Text('Ok'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    ));