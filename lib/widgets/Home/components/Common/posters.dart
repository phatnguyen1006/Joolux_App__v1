import 'package:flutter/material.dart';
// widgets
import '../../../../models/products/poster.dart';
import '../../../Layout/app_pop_bar.dart';
import '../cookie_page.dart';

class Posters extends StatelessWidget {
  // final Poster poster;
  // const Posters({Key? key, required this.poster}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Scaffold(
                    appBar: appPopBar(context),
                    body: CookiePage(),
                  ),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: posters.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.9,
                ),
                itemBuilder: (context, index) => posterIndex(index),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget posterIndex(index) {
    return Container(
      child: Image.asset(posters[index].image),
    );
  }
}
