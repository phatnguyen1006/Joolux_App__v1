import 'package:flutter/material.dart';

// Component Widgets
import '../Home/components/cookie_page.dart';
import 'Others/StartScreenSearch.dart';

List<String> dataAPI = [
  "All Shoes",
  "Boots",
  "Loafers & Moccasins",
  "Oxfords",
  "Sandals",
  "Sneakers",
  "Slippers",
  "Loafers",
  "Penny Loafers",
  "Moccasins",
  "Espadrille",
  "Lace Up Sneakers",
  "Slip On Sneaker",
  "High Top Sneakers",
  "Thongs",
  "Ankle Length Boots",
  "Knee Length Boots",
  "Wedge",
  "Thigh High Boots",
  "Ankle Boots",
  "Flat Sandals",
  "Knee High Boots",
  "Mules",
  "Slide Sandals",
  "All Bags",
  "Clutches",
  "Evening Bags",
  "Everyday Bags",
  "Exotic bags",
  "Hobos",
  "Satchels",
  "Shoulder Bags",
  "Totes",
  "Wallets",
  "All Clothing",
  "Dresses",
  "Jackets",
  "Jeans & Denim",
  "Sweaters & Knitwear",
  "Coats",
  "Shorts",
  "Skirts",
  "Suits",
  "Tops",
  "Pants",
  "All Accessories",
  "Fashion and Silver Jewelry",
  "Scarves",
  "Women's Belts",
  "Women's Sunglasses",
  "Women's Tech Accessories",
  "Cufflinks",
  "Men's Belts",
  "Men's Scarves",
  "Men's Sunglasses",
  "Pens",
  "Ties",
  "Jewelry"
];

class SearchPage extends SearchDelegate<String> {
  SearchPage({
    String hintText = "What are you looking for?",
  }) : super(
            searchFieldLabel: hintText,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            searchFieldStyle: TextStyle(color: Colors.grey, fontSize: 15));

  @override
  List<Widget>? buildActions(BuildContext context) {
    return query.isNotEmpty
        ? [
            IconButton(
                onPressed: () {
                  query = "";
                },
                icon: Icon(Icons.clear))
          ]
        : null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              alignment: Alignment.centerLeft,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 0.0, left: 16.0),
            child: Icon(Icons.search_rounded),
          ),
        ),
      ],
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return CookiePage();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final myList =
        query.isEmpty ? [] : dataAPI.where((e) => e.startsWith(query)).toList();
    return query.isEmpty
        ? StartScreenSearch(size: size)
        : Column(
            children: [
              Container(
                width: size.width,
                height: 0.2,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      query.isNotEmpty
                          ? Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  height: 40,
                                  width: size.width,
                                  child: Text("SUGGESTIONS FOR \"$query\"")),
                            )
                          : Container(
                              height: 0, width: size.width, child: Text("")),
                      Flexible(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 16.0, right: 16.0),
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: myList
                                .map((type) => GestureDetector(
                                      onTap: () {
                                        showResults(context);
                                      },
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        height: 40,
                                        width: size.width,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            type,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
