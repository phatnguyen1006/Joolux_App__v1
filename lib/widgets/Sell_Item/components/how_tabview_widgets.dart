import 'package:flutter/material.dart';

//Widgets
import './how_tabview_widgets/premium_tab_widget.dart';
import './how_tabview_widgets/how_to_sell_tab_widget.dart';

class HowWidgets extends StatefulWidget {
  @override
  _HowWidgetsState createState() => _HowWidgetsState();
}

class _HowWidgetsState extends State<HowWidgets> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 35),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: TabBar(
                tabs: [
                  Tab(text: 'Premium Concierge Service'),
                  Tab(text: 'Sell On Your Own'),
                ],
                indicator: BoxDecoration(
                  color: Colors.black,
                ),
                isScrollable: false,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey.shade500,
              ),
            ),
            Expanded(
              child: SizedBox(
                child: TabBarView(
                  children: [
                    PremiumTab(),
                    HowToSellTab(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Container(
//                       color: Colors.white,
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                             left: 7, right: 9, top: 20, bottom: 20),
//                         child: Column(
//                           children: [
//                             SizedBox(
//                               // height: 130,
//                               child: TimelineTile(
//                                 axis: TimelineAxis.vertical,
//                                 alignment: TimelineAlign.start,
//                                 afterLineStyle: LineStyle(
//                                   color: Colors.grey,
//                                   thickness: 1,
//                                 ),
//                                 endChild: Container(
//                                   // constraints: const BoxConstraints(
//                                   //   minHeight: 300,
//                                   //   maxWidth: 200,
//                                   // ),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         height: 70,
//                                         width: 60,
//                                         decoration: BoxDecoration(
//                                           image: DecorationImage(
//                                             image: AssetImage(
//                                                 'assets/cookiemint.jpg'),
//                                             fit: BoxFit.fill,
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                         child: Padding(
//                                           padding: EdgeInsets.only(left: 15),
//                                           child: SizedBox(
//                                             // width: 210,
//                                             child: Column(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.start,
//                                               children: [
//                                                 Align(
//                                                   alignment: Alignment.topLeft,
//                                                   child: Container(
//                                                     child: Text(
//                                                       "Leave Your Contact Details",
//                                                       style: TextStyle(
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.w500),
//                                                       textAlign:
//                                                           TextAlign.start,
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Expanded(
//                                                   child: Padding(
//                                                     padding:
//                                                         EdgeInsets.symmetric(
//                                                             vertical: 10),
//                                                     child: Text(
//                                                         "Timelines are a beautiful and useful way to display organized data. This project contains some real world examples of how to build them with Flutter.",
//                                                         style: TextStyle(
//                                                             fontSize: 15,
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .w400),
//                                                         textAlign:
//                                                             TextAlign.start),
//                                                   ),
//                                                 ),
//                                                 Expanded(
//                                                   child: Text(
//                                                       "Timelines are a beautiful and useful way to display organized data. This project contains some real world examples of how to build them with Flutter.",
//                                                       style: TextStyle(
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.w400),
//                                                       textAlign:
//                                                           TextAlign.start),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   // color: Colors.lightGreenAccent,
//                                 ),
//                                 isFirst: true,
//                                 indicatorStyle: IndicatorStyle(
//                                   width: 30,
//                                   height: 30,
//                                   padding: EdgeInsets.symmetric(horizontal: 8),
//                                   drawGap: true,
//                                   indicator: Container(
//                                       decoration: const BoxDecoration(
//                                         border: Border.fromBorderSide(
//                                           BorderSide(
//                                             color: Colors.grey,
//                                           ),
//                                         ),
//                                         shape: BoxShape.circle,
//                                       ),
//                                       child: const Center(
//                                         child: Text(
//                                           "1",
//                                           style: TextStyle(fontSize: 20),
//                                         ),
//                                       )),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               // height: 170,
//                               child: TimelineTile(
//                                 axis: TimelineAxis.vertical,
//                                 alignment: TimelineAlign.start,
//                                 beforeLineStyle: LineStyle(
//                                   color: Colors.grey,
//                                   thickness: 1,
//                                 ),
//                                 afterLineStyle: LineStyle(
//                                   color: Colors.grey,
//                                   thickness: 1,
//                                 ),
//                                 endChild: Container(
//                                   // constraints: const BoxConstraints(
//                                   //   minHeight: 200,
//                                   // ),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         height: 70,
//                                         width: 60,
//                                         decoration: BoxDecoration(
//                                           image: DecorationImage(
//                                             image: AssetImage(
//                                                 'assets/cookiemint.jpg'),
//                                             fit: BoxFit.fill,
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                         child: Padding(
//                                           padding: EdgeInsets.only(left: 15),
//                                           child: SizedBox(
//                                             child: Column(
//                                               children: [
//                                                 Align(
//                                                   alignment: Alignment.topLeft,
//                                                   child: Container(
//                                                     child: Text(
//                                                         "Leave Your Contact Details",
//                                                         style: TextStyle(
//                                                             fontSize: 15,
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .w500),
//                                                         textAlign:
//                                                             TextAlign.left),
//                                                   ),
//                                                 ),
//                                                 Padding(
//                                                   padding: EdgeInsets.symmetric(
//                                                       vertical: 10),
//                                                   child: Text(
//                                                       "Timelines are a beautiful and useful way to display organized data. This project contains some real world examples of how to build them with Flutter.",
//                                                       style: TextStyle(
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.w400),
//                                                       textAlign:
//                                                           TextAlign.left),
//                                                 ),
//                                                 Text("",
//                                                     style: TextStyle(
//                                                         fontSize: 15,
//                                                         fontWeight:
//                                                             FontWeight.w400),
//                                                     textAlign: TextAlign.left),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   // color: Colors.lightGreenAccent,
//                                 ),
//                                 indicatorStyle: IndicatorStyle(
//                                   width: 30,
//                                   height: 30,
//                                   padding: EdgeInsets.symmetric(horizontal: 8),
//                                   drawGap: true,
//                                   indicator: Container(
//                                       decoration: const BoxDecoration(
//                                         border: Border.fromBorderSide(
//                                           BorderSide(
//                                             color: Colors.grey,
//                                           ),
//                                         ),
//                                         shape: BoxShape.circle,
//                                       ),
//                                       child: const Center(
//                                         child: Text(
//                                           "2",
//                                           style: TextStyle(fontSize: 20),
//                                         ),
//                                       )),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               // height: 170,
//                               child: TimelineTile(
//                                 axis: TimelineAxis.vertical,
//                                 alignment: TimelineAlign.start,
//                                 beforeLineStyle: LineStyle(
//                                   color: Colors.grey,
//                                   thickness: 1,
//                                 ),
//                                 afterLineStyle: LineStyle(
//                                   color: Colors.grey,
//                                   thickness: 1,
//                                 ),
//                                 endChild: Container(
//                                   // constraints: const BoxConstraints(
//                                   //   minHeight: 200,
//                                   // ),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         height: 70,
//                                         width: 60,
//                                         decoration: BoxDecoration(
//                                           image: DecorationImage(
//                                             image: AssetImage(
//                                                 'assets/cookiemint.jpg'),
//                                             fit: BoxFit.fill,
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                         child: Padding(
//                                           padding: EdgeInsets.only(left: 15),
//                                           child: SizedBox(
//                                             child: Column(
//                                               children: [
//                                                 Text(
//                                                     "Leave Your Contact Details ",
//                                                     style: TextStyle(
//                                                         fontSize: 15,
//                                                         fontWeight:
//                                                             FontWeight.w500),
//                                                     textAlign: TextAlign.left),
//                                                 Padding(
//                                                   padding: EdgeInsets.symmetric(
//                                                       vertical: 10),
//                                                   child: Text(
//                                                       "Timelines are a beautiful and useful way to display organized data. This project contains some real world examples of how to build them with Flutter.",
//                                                       style: TextStyle(
//                                                           fontSize: 15,
//                                                           fontWeight:
//                                                               FontWeight.w400),
//                                                       textAlign:
//                                                           TextAlign.left),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   // color: Colors.lightGreenAccent,
//                                 ),
//                                 indicatorStyle: IndicatorStyle(
//                                   width: 30,
//                                   height: 30,
//                                   padding: EdgeInsets.symmetric(horizontal: 8),
//                                   drawGap: true,
//                                   indicator: Container(
//                                       decoration: const BoxDecoration(
//                                         border: Border.fromBorderSide(
//                                           BorderSide(
//                                             color: Colors.grey,
//                                           ),
//                                         ),
//                                         shape: BoxShape.circle,
//                                       ),
//                                       child: const Center(
//                                         child: Text(
//                                           "3",
//                                           style: TextStyle(fontSize: 20),
//                                         ),
//                                       )),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               // height: 190,
//                               child: TimelineTile(
//                                 axis: TimelineAxis.vertical,
//                                 alignment: TimelineAlign.start,
//                                 beforeLineStyle: LineStyle(
//                                   color: Colors.grey,
//                                   thickness: 1,
//                                 ),
//                                 endChild: Container(
//                                   constraints: const BoxConstraints(
//                                     minHeight: 150,
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         height: 70,
//                                         width: 60,
//                                         decoration: BoxDecoration(
//                                           image: DecorationImage(
//                                             image: AssetImage(
//                                                 'assets/cookiemint.jpg'),
//                                             fit: BoxFit.fill,
//                                           ),
//                                         ),
//                                       ),
//                                       Expanded(
//                                         child: Padding(
//                                           padding: EdgeInsets.only(left: 15),
//                                           child: SizedBox(
//                                             // width: 210,
//                                             child: Column(
//                                               children: [
//                                                 Text(
//                                                     "Leave Your Contact Details",
//                                                     style: TextStyle(
//                                                         fontSize: 15,
//                                                         fontWeight:
//                                                             FontWeight.w500),
//                                                     textAlign: TextAlign.left),
//                                                 Expanded(
//                                                   child: Padding(
//                                                     padding:
//                                                         EdgeInsets.symmetric(
//                                                             vertical: 10),
//                                                     child: Text(
//                                                         "Timelines are a beautiful and useful way to display organized data. This project contains some real world examples of how to build them with Flutter.",
//                                                         style: TextStyle(
//                                                             fontSize: 15,
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .w400),
//                                                         textAlign:
//                                                             TextAlign.left),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   // color: Colors.lightGreenAccent,
//                                 ),
//                                 isLast: true,
//                                 indicatorStyle: IndicatorStyle(
//                                   width: 30,
//                                   height: 30,
//                                   padding: EdgeInsets.symmetric(horizontal: 8),
//                                   drawGap: true,
//                                   indicator: Container(
//                                       decoration: const BoxDecoration(
//                                         border: Border.fromBorderSide(
//                                           BorderSide(
//                                             color: Colors.grey,
//                                           ),
//                                         ),
//                                         shape: BoxShape.circle,
//                                       ),
//                                       child: const Center(
//                                         child: Text(
//                                           "4",
//                                           style: TextStyle(fontSize: 20),
//                                         ),
//                                       )),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),