import 'package:flutter/material.dart';
import '../../../../models/products/products.dart';
import '../../../product_details_page/details_page.dart';

class Posters extends StatelessWidget {
  // final Poster poster;
  // const Posters({Key? key, required this.poster}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
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
    return Column(
      children: [
        Expanded(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Image.asset(posters[index].image),
            ),
          ),
        ),
      ],
    );
  }
}
