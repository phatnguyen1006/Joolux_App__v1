import 'package:flutter/material.dart';


class DeliveryReturnInfo extends StatelessWidget {
  const DeliveryReturnInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0, top: 16.0, bottom: 8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.check),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Delivery to: ",
                            style:
                            TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          TextSpan(
                            text: "UNITED STATES",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("For more information about Delivery & Return");
                    },
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "For more information about Delivery & Return, ",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        TextSpan(
                          text: "CLICK HERE",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Container(
                  width: size.width,
                  height: size.height/10,
                  decoration: BoxDecoration(color: Color(0xFFECEFF1)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_upward),
                      Text("Hassle Free Returns")
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
