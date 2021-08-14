import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'expanded_list_animation_widget.dart';



List<String> brands = ["Gucci", "Adidas", "Luis vuitton", "Channel"];

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  bool choseFilter = false;
  bool showFilter = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 2,
        title: Text(
          "Filter By",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Color(0xFF545D68),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    showFilter = !showFilter;
                  });
                },
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          alignment: Alignment.centerLeft,
                          height: size.height / 20 + 10,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, left: 8.0),
                            child: Text(
                                "Brands",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                            ),
                          )),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      height: size.height / 20,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: showFilter ? Icon(Icons.remove)
                            : Icon(Icons.add)
                      ),
                    )
                  ],
                ),
              ),
              ExpandedSection(
                expand: showFilter,
                child: Column(
                  children: brands.map((e) => Container()).toList(),
                ),
              )
            ],
          ),
        ],
      ),
      persistentFooterButtons: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 1),
                child: Container(
                    color: choseFilter? Colors.black : Colors.black45,
                    child: TextButton(
                        onPressed: choseFilter? () {} : null,
                        child: Text(
                          "APPLY FILTER",
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
            ),
          ],
        )
      ],
    );
  }
}
