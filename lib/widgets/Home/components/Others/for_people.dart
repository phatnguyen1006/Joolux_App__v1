import 'package:flutter/material.dart';
import '../../../../models/products/poster.dart';
//Widgets
//import '../../../Layout/app_pop_bar.dart';
import '../Common/posters.dart';
import '../../../../constants/constants.dart';
//import '../cookie_page.dart';

class ForPeople extends StatelessWidget {
  final String typePeople;
  const ForPeople({Key? key, required this.typePeople}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Posters(poster: posters, number: 1),
          // Padding(
          //   padding: const EdgeInsets.only(top: 8.0),
          //   child: GestureDetector(
          //       onTap: () => Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => Scaffold(
          //               appBar: appPopBar(context),
          //               body: CookiePage(),
          //             ),
          //           )),
          //       child: Padding(
          //         padding: const EdgeInsets.only(bottom: 8.0),
          //         child: Container(
          //           width: size.width,
          //           height: 200,
          //           decoration: BoxDecoration(
          //             color: Colors.blueGrey,
          //           ),
          //         ),
          //       )),
          // ),
          GestureDetector(
              onTap: () {
                print("Clicked");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: DefaultPadding / 2,
                          crossAxisSpacing: DefaultPadding / 2,
                          childAspectRatio: 1,
                        ),
                        itemBuilder: (context, index) => peopleItem()),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget peopleItem() {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(DefaultPadding),
                child: Image.asset("assets/images/bag_1.png"),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: const Text(
            "Chanel",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
