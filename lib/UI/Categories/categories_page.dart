import 'package:flutter/material.dart';


import 'Others/categories_tab_pages.dart';


class CategoriesPage extends StatefulWidget {

  const CategoriesPage({Key? key}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            height: 0.2,
            width: size.width,
            decoration: BoxDecoration(color: Colors.black),
          ),
        CategoriesTabPages()
      ],
    );
  }
}

// class CategoriesPage extends StatefulWidget {
//   @override
//   _CategoriesPageState createState() => _CategoriesPageState();
// }
//
// class _CategoriesPageState extends State<CategoriesPage> with SingleTickerProviderStateMixin{
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Container(
//           height: 0.2,
//           width: size.width,
//           decoration: BoxDecoration(color: Colors.black),
//         ),
//         DefaultTabController(
//           length: 2,
//           child: Expanded(
//             child: Column(
//               children: [
//                 TabBar(
//                   indicatorColor: Colors.transparent,
//                   labelColor: Colors.black,
//                   indicator: BoxDecoration(
//                       border: Border(
//                           bottom: BorderSide(width: 2, color: Colors.black))),
//                   labelPadding:
//                       EdgeInsets.only(right: 10, left: 10, bottom: 0, top: 0),
//                   unselectedLabelColor: Color(0xFFCDCDCD),
//                   tabs: [
//                     Tab(
//                       text: "WOMEN",
//                     ),
//                     Tab(text: "MEN")
//                   ],
//                 ),
//                 Expanded(
//                   child: TabBarView(
//                     children: [
//                       CookiePage(),
//                       CookiePage()
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
