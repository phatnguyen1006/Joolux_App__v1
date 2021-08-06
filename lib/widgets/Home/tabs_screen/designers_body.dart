import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';

// widgets
import '../components/Common/posters.dart';
import '../../../models/products/poster.dart';
import '../components/Common/footer.dart';
// const
import '../../../constants/constants.dart';

class DesignerBody extends StatelessWidget {
  const DesignerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Container(
          height: 200,
          color: Colors.orange,
        ),
        Padding(
          padding: const EdgeInsets.only(top: DefaultPadding),
          child: SizedBox(
            width: size.width,
            height: size.height * 0.05,
            child: const Text(
              "Editor's Picks",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Posters(poster: posters, number: 3),
        Footer(size: size),
      ],
    );
  }
}
