import 'package:flutter/material.dart';
//Widgets
import '../../../models/WishList/fakeList.dart';
import '../../../models/products/products.dart';
import '../../product_details_page/details_page.dart';

class InfoItemCart extends StatelessWidget {
  final List<FakeList> fakeList;
  final int index;
  const InfoItemCart({Key? key, required this.fakeList, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(product: products[index]),
        ),
      ),
      child: Container(
        // color: Colors.grey,
        padding: EdgeInsets.only(top: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 4, // 40%
              child: Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(fakeList[index].image),
              ),
            ),
            Expanded(
              flex: 6, // 60%
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      fakeList[index].name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.topLeft,
                    child: Text(
                      fakeList[index].title,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text.rich(TextSpan(
                          text: 'Condition: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: fakeList[index].condition,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ])),
                    ),
                  ),
                  fakeList[index].size != ""
                      ? Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text.rich(TextSpan(
                                text: 'Size: ',
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: fakeList[index].size,
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  )
                                ])),
                          ),
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      fakeList[index].type,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "\$${fakeList[index].price}",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Duty/Taxes May Apply",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade500,
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
                  ),
                ],
              ),
            ),
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
          content:
              new Text("Duty/Taxes May Apply\nShipping & Insurance Included"),
          actions: <Widget>[
            TextButton(
              child: Text(
                'OK',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));
