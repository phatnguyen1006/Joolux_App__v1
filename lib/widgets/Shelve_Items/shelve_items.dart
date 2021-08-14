import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Components
import '../../../widgets/Layout/Views/list_view_products.dart';
import '../../../widgets/Layout/app_pop_bar.dart';
import '../../../widgets/Layout/Views/grid_view_products.dart';
import 'Others/expanded_list_animation_widget.dart';
import 'Others/filter_screen.dart';

List<String> _list = [
  "Suggested",
  "Newest",
  "Oldest",
  "Lowest Price",
  "Highest Price",
  "Lowest Percentage Discount",
  "Highest Percentage Discount"
];

class ShelveItems extends StatefulWidget {
  final String productType;

  const ShelveItems({Key? key, required this.productType}) : super(key: key);

  @override
  _ShelveItemsState createState() => _ShelveItemsState();
}

class _ShelveItemsState extends State<ShelveItems> {
  late bool typeView = true;
  late bool isShowedSortList = false;
  late SvgPicture iconViewProduct;
  late Text textTitleViewProduct;
  List<String> filterByBrandList = [];
  int chooseSortType = 1;

  @override
  Widget build(BuildContext context) {
    if (typeView == true) {
      textTitleViewProduct = Text(
        "View: Grid",
        style: TextStyle(color: Colors.black),
      );
      iconViewProduct = SvgPicture.asset(
        "assets/icons/menu-grid.svg",
        color: Colors.black,
        height: 15,
        width: 15,
      );
    } else {
      textTitleViewProduct = Text(
        "View: List",
        style: TextStyle(color: Colors.black),
      );
      iconViewProduct = SvgPicture.asset(
        "assets/icons/menu-list.svg",
        color: Colors.black,
        height: 15,
        width: 15,
      );
    }

    void choseSortType(index) {
      setState(() {
        isShowedSortList = !isShowedSortList;
        chooseSortType = index;
      });
    }

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appPopBar(context, widget.productType),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: size.width,
            height: size.height / 15,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 1),
                    child: Container(
                        color: Color(0xFFCDCDCD),
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Filter(),
                                  ));
                              setState(() {
                                if (isShowedSortList) {
                                  isShowedSortList = !isShowedSortList;
                                }
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4.0),
                                  child: SvgPicture.asset(
                                    "assets/icons/filter.svg",
                                    color: Colors.black,
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                Text(
                                  "Filter",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ))),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 1),
                    child: Container(
                        color: isShowedSortList ? Colors.black : Color(0xFFCDCDCD),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                isShowedSortList = !isShowedSortList;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4.0),
                                  child: SvgPicture.asset(
                                    "assets/icons/sort-arrow-vertical.svg",
                                    color: isShowedSortList ? Colors.white : Colors.black,
                                    height: 15,
                                    width: 15,
                                  ),
                                ),
                                Text(
                                  "Sort",
                                  style: TextStyle(color: isShowedSortList ? Colors.white : Colors.black),
                                ),
                              ],
                            ))),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Color(0xFFCDCDCD),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              if (isShowedSortList) {
                                isShowedSortList = !isShowedSortList;
                              }
                              typeView = !typeView;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: iconViewProduct,
                              ),
                              textTitleViewProduct,
                            ],
                          ))),
                )
              ],
            ),
          ),
          Flexible(
            child: Stack(children: [
              SingleChildScrollView(
                  child: typeView ? ProductGridView() : ProductListView()),
                  ExpandedSection(
                    expand: isShowedSortList,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isShowedSortList = !isShowedSortList;
                        });
                      },
                      child: Container(
                        height: size.height,
                        width: size.width,
                        color: Colors.black.withOpacity(0.2),
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: _list.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            choseSortType(index);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, right: 8.0),
                                            child: Row(
                                              //mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  _list.elementAt(index),
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                )),
                                                chooseSortType == index
                                                    ? Icon(Icons.check)
                                                    : Icon(null),
                                              ],
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0),
                                        child: Container(
                                          color: Colors.black,
                                          height: 0.3,
                                          width: size.width,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                    ),
                  )
            ]),
          )
        ],
      ),
    );
  }
}
