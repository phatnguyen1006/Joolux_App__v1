import 'package:flutter/material.dart';
import '../../../../models/products/products.dart';

class Posters extends StatelessWidget {
  final Poster poster;
  final Function press;
  const Posters({Key? key, required this.poster, required this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Image.asset(poster.image),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
