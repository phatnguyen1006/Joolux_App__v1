import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(Icons.money_off_outlined, color: Color(0xFF676E79)),
      ),
    );
  }
}
