import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouseImagesSlider extends StatefulWidget {
  final List<String> imgProductList;

  const CarouseImagesSlider({Key? key, required this.imgProductList})
      : super(key: key);

  @override
  _CarouseImagesSliderState createState() => _CarouseImagesSliderState();
}

class _CarouseImagesSliderState extends State<CarouseImagesSlider> {
  int _currentImg = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imagesSliders = widget.imgProductList
        .map((img) => Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(
                img,
                // fit: BoxFit.cover,
                // width: 1000,
              ),
        )))
        .toList();

    return Column(
      children: [
        CarouselSlider(
            items: imagesSliders,
            options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentImg = index;
                  });
                })),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: widget.imgProductList.map((img) {
              int index = widget.imgProductList.indexOf(img);
              return Container(
                width: 4,
                height: 4,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentImg == index ? Colors.black : Colors.grey),
              );
            }).toList())
      ],
    );
  }
}
