import 'package:flutter/material.dart';

// icons
// import '../../models/icons/icons.dart';

class FloatingButton extends StatelessWidget {
  final Function setPage;
  final int currentPage;

  FloatingButton({required this.currentPage, required this.setPage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      child: FloatingActionButton(
        onPressed: () {
          setPage(2);
        },
        backgroundColor: Colors.white,
        child: Icon(Icons.attach_money_outlined,
            color: currentPage == 2 ? Colors.black : Color(0xFF676E79)),
      ),
    );
  }
}
