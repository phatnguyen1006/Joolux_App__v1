import 'package:flutter/material.dart';

// icons
// import '../../models/icons/icons.dart';

class FloatingButton extends StatelessWidget {
  final Function setPage;

  FloatingButton({required this.setPage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      child: FloatingActionButton(
        onPressed: () {
          setPage(2);
        },
        backgroundColor: Colors.white,
        child: Icon(Icons.money_off_outlined, color: Color(0xFF676E79)),
      ),
    );
  }
}
