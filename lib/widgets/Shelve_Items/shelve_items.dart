import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Components
import '../../../widgets/Layout/Views/list_view_products.dart';
import '../../../widgets/Layout/app_pop_bar.dart';
import '../../../widgets/Layout/Views/grid_view_products.dart';

class ShelveItems extends StatefulWidget {
  final String productType;

  const ShelveItems({Key? key, required this.productType}) : super(key: key);

  @override
  _ShelveItemsState createState() => _ShelveItemsState();
}

class _ShelveItemsState extends State<ShelveItems> {
  late bool typeView = true;
  late SvgPicture iconViewProduct;
  late Text textTitleViewProduct;

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
                            onPressed: () {},
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
                        color: Color(0xFFCDCDCD),
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4.0),
                                  child: SvgPicture.asset(
                                    "assets/icons/sort-arrow-vertical.svg",
                                    color: Colors.black,
                                    height: 15,
                                    width: 15,
                                  ),
                                ),
                                Text(
                                  "Sort",
                                  style: TextStyle(color: Colors.black),
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
            child: SingleChildScrollView(
                child: typeView ? ProductGridView() : ProductListView()),
          )
        ],
      ),
    );
  }
}
