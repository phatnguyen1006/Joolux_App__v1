import "package:flutter/material.dart";

class BgImageContent extends StatelessWidget {
  const BgImageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cookiemint.jpg'),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.2),
            BlendMode.darken,
          ),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 40, right: 0, bottom: 30, left: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Refresh Your Wardrobe & Consign With Us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Text(
                "It's fast and easy, get started now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Earn Back 100% When You Sell Your First Item!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Use Code: ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  child: Text(
                    "FIRSTITEM",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              child: Text(
                'T&C APPLIED',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    height: 1.0,
                    fontSize: 15,
                    color: Colors.white),
              ),
              onPressed: () {
                _showModalDialog(context);
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 10, right: 10),
              child: InkWell(
                child: Container(
                  height: 50,
                  width: size.width,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Enjoy Premium Concierge Service',
                      style: TextStyle(
                        height: 1,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  print("Click event on Container");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: InkWell(
                child: Container(
                  height: 50,
                  width: size.width,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sell On Your Own',
                        style: TextStyle(
                          height: 1,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  print("Click event on Container");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showModalDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Container(
        height: 220,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                ),
                color: Colors.grey.shade200,
              ),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      child: Text(
                        "Term & Conditions",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      top: -10,
                      right: -10,
                      child: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 170,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("• "),
                        Expanded(
                          child: Text(
                            "Zero commission, 100% payout applicable for a first item valued up to 5000",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("• "),
                        Expanded(
                          child: Text(
                            "Earn an assured discount of upto 1250 on commission for a first item valued above 5000",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "• ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Text(
                            "In casse of multiple item submissions, the promotion will be applied to thr lowest value item",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
