import 'package:flutter/material.dart';
import '../Layout/app_pop_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appPopBar(context),
      body: Container(),
    );
  }
}
