import 'package:flutter/material.dart';
import '../Layout/app_pop_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appPopBar(context),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Container(
            width: size.width,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          ExpansionPanelList(
            children: [
              ExpansionPanel(
                  headerBuilder: (context, isOpen) {
                    return Text("Hello");
                  },
                  body: Text("Now Open!"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
