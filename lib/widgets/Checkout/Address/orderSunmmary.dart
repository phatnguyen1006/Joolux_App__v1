import 'package:flutter/material.dart';
//Widgets
import '../../../models/WishList/fakeList.dart';
import '../../WishList/Components/list_item_wishlist.dart';

class OrderSummary extends StatefulWidget {
  @override
  _OrderSummaryState createState() => new _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Container(
                        child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Order Summary",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "\$500",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: IconButton(
                          icon: !isExpanded
                              ? Icon(Icons.add)
                              : Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          AnimatedContainer(
            width: size.width,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            duration: const Duration(milliseconds: 100),
            child: isExpanded
                ? Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text("SHIPMENT 1/1",
                                    style: TextStyle(letterSpacing: 0.7)),
                              ),
                              Text("Estimated Delivery: ...",
                                  style: TextStyle(letterSpacing: 0.7)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          color: Colors.white,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: wishList_fake.length,
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: EdgeInsets.all(0),
                                child:
                                    ListItem(fakeList: wishList_fake, index: i),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(
                    height: 0,
                  ),
          ),
        ],
      ),
    );
  }
}
