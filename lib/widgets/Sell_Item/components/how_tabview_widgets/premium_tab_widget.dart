import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import './paragram.dart';

class PremiumTab extends StatefulWidget {
  @override
  _PremiumState createState() => _PremiumState();
}

class _PremiumState extends State<PremiumTab> {
  List<ParaInfo> _parainfo = <ParaInfo>[
    ParaInfo(
      title: "One",
      subTitle:
          "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
      addition:
          'The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us',
      image: 'assets/cookiemint.jpg',
      isFirst: true,
      isLast: false,
    ),
    ParaInfo(
      title: "Two",
      subTitle:
          "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
      addition: '',
      image: 'assets/cookiemint.jpg',
      isFirst: false,
      isLast: false,
    ),
    ParaInfo(
      title: "Three",
      subTitle:
          "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
      addition: '',
      image: 'assets/cookiemint.jpg',
      isFirst: false,
      isLast: false,
    ),
    ParaInfo(
      title: "Last",
      subTitle:
          "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
      addition: '',
      image: 'assets/cookiemint.jpg',
      isFirst: false,
      isLast: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7, right: 9, top: 20),
      child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: _parainfo.map((para) {
            var index = (_parainfo.indexOf(para) + 1).toString();
            return SizedBox(
              child: TimelineTile(
                axis: TimelineAxis.vertical,
                alignment: TimelineAlign.start,
                // line trước
                beforeLineStyle: LineStyle(
                  color: Colors.grey,
                  thickness: 1,
                ),
                // line sau
                afterLineStyle: LineStyle(
                  color: Colors.grey,
                  thickness: 1,
                ),
                // right content
                endChild: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(para.image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    child: Text(
                                      para.title,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        para.subTitle,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: para.addition != ''
                                      ? Padding(
                                          padding: EdgeInsets.only(bottom: 15),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              para.addition,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        )
                                      : Padding(
                                          padding: EdgeInsets.only(bottom: 15),
                                          child: SizedBox(height: 0)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                isFirst: para.isFirst,
                isLast: para.isLast,
                // vẽ ô tròn
                indicatorStyle: IndicatorStyle(
                  width: 30,
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  drawGap: true,
                  indicator: Container(
                      decoration: const BoxDecoration(
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          index,
                          style: TextStyle(fontSize: 15),
                        ),
                      )),
                ),
              ),
            );
          }).toList()),
    );
  }
}
