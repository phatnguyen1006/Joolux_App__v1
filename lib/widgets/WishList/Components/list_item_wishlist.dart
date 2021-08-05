import 'package:flutter/material.dart';
import '../../../models/icons/icons.dart';
import '../../../models/WishList/fakeList.dart';
import './button_wishlist.dart';
import '../../../models/products/products.dart';
import '../../product_details_page/details_page.dart';
//Widgets

class ListItem extends StatelessWidget {
  final List<FakeList> fakeList;
  final int index;
  const ListItem({Key? key, required this.fakeList, required this.index})
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
                      fakeList[index].title,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text.rich(TextSpan(
                          text: 'Condition: ',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: fakeList[index].condition,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                              ),
                            )
                          ])),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "\$${fakeList[index].price}",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
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
