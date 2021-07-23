import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import './paragram.dart';

class HowToSellTab extends StatefulWidget {
  @override
  _HowToSellState createState() => _HowToSellState();
}

class _HowToSellState extends State<HowToSellTab> {
  List<ParaInfo> _parainfo = <ParaInfo>[
    ParaInfo(
      title: "1",
      subTitle:
          "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
      addition: '',
      image: 'assets/cookiemint.jpg',
      isFirst: true,
      isLast: false,
    ),
    ParaInfo(
      title: "2",
      subTitle:
          "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
      addition: '',
      image: 'assets/cookiemint.jpg',
      isFirst: false,
      isLast: false,
    ),
    ParaInfo(
      title: "3",
      subTitle:
          "The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us",
      addition:
          'The Luxury Closet is the most trusted online boutique for selling new and pre-loved luxury items. When you chosse to consign a luxurypiece with us',
      image: 'assets/cookiemint.jpg',
      isFirst: false,
      isLast: false,
    ),
    ParaInfo(
      title: "4",
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
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 7, right: 9, top: 20, bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "How To Sell With Us?",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "IT IS EASY, FAST & HASSLE-FREE",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Column(
                children: _parainfo.map((para) {
              var index = (_parainfo.indexOf(para) + 1).toString();
              return SizedBox(
                child: TimelineTile(
                  axis: TimelineAxis.vertical,
                  alignment: TimelineAlign.start,
                  beforeLineStyle: LineStyle(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  afterLineStyle: LineStyle(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  endChild: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
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
                              // width: 210,
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
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Text(para.subTitle,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.start),
                                    ),
                                  ),
                                  SizedBox(
                                    child: para.addition != ''
                                        ? Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 15),
                                            child: Text(para.addition,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                textAlign: TextAlign.start),
                                          )
                                        : Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 15),
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
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                  ),
                ),
              );
            }).toList()),
          ],
        ),
      ),
    );
  }
}
