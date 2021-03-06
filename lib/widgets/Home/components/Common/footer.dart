import 'package:flutter/material.dart';
import '../../../../models/icons/icons.dart';

import '../../../../constants/constants.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: DefaultPadding),
          child: SizedBox(
            width: size.width,
            height: size.height * 0.03,
            child: const Text(
              "You Can Always Count On Us",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 4),
              child: Container(
                constraints: const BoxConstraints(
                    minHeight: 0.0, maxHeight: double.infinity),
                width: size.width,
                color: Color(0xFFECEFF1),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(MyIcon.heart),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Unique Luxury Pieces",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: const Text(
                                "Extensive luxury collection where each item is unique & high on Extensive luxury collection where each item is unique & high on fashionExtensive luxury collection where each item is unique & high on fashion",
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 4),
              child: Container(
                constraints: const BoxConstraints(
                    minHeight: 0.0, maxHeight: double.infinity),
                width: size.width,
                color: Color(0xFFECEFF1),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(MyIcon.heart),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Unique Luxury Pieces",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: const Text(
                                "Extensive luxury collection where each item is unique & high on fashion",
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 4),
              child: Container(
                constraints: const BoxConstraints(
                    minHeight: 0.0, maxHeight: double.infinity),
                width: size.width,
                color: Color(0xFFECEFF1),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(MyIcon.heart),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Unique Luxury Pieces",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: const Text(
                                "Extensive luxury collection where each item is unique & high on fashion",
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 4),
              child: Container(
                constraints: const BoxConstraints(
                    minHeight: 0.0, maxHeight: double.infinity),
                width: size.width,
                color: Color(0xFFECEFF1),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(MyIcon.heart),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Unique Luxury Pieces",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: const Text(
                                "Extensive luxury collection where each item is unique & high on fashion",
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
