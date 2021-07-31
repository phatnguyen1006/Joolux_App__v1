import 'package:flutter/material.dart';

class ReasonInfo {
  final String title;
  final String subTitle;
  final Icon icon;

  ReasonInfo({required this.title, required this.subTitle, required this.icon});
}

class WhyWidgets extends StatefulWidget {
  @override
  _WhyWidgetsState createState() => _WhyWidgetsState();
}

class _WhyWidgetsState extends State<WhyWidgets> {
  List<ReasonInfo> _reasoninfo = <ReasonInfo>[
    ReasonInfo(
        title: "Reason Information",
        subTitle:
            "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
        icon: Icon(Icons.access_alarm)),
    ReasonInfo(
        title: "Item Condition",
        subTitle:
            "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
        icon: Icon(Icons.access_alarm)),
    ReasonInfo(
        title: "Shipping & Payment",
        subTitle:
            "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
        icon: Icon(Icons.access_alarm)),
    ReasonInfo(
        title: "Verified Authenticity",
        subTitle:
            "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
        icon: Icon(Icons.access_alarm)),
    ReasonInfo(
        title: "Warranty & Return",
        subTitle:
            "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
        icon: Icon(Icons.access_alarm)),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Why Choose Us!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us, we make sure you get the fair price once it is sold",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Column(
            children: _reasoninfo
                .map(
                  (reason) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      color: Colors.white,
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 15, left: 10, right: 10, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            reason.icon,
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                reason.title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.7),
                              ),
                            ),
                            Center(
                              child: Text(
                                reason.subTitle,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
