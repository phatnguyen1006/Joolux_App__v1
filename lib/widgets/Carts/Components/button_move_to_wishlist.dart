import 'package:flutter/material.dart';
import '../../../models/icons/icons.dart';
//moddels
import '../../../models/WishList/fakeList.dart';
//Widgets

class BtnMoveToWishlist extends StatelessWidget {
  final List<FakeList> fakeList;
  final int index;
  const BtnMoveToWishlist(
      {Key? key, required this.fakeList, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
      child: TextButton(
        style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.all<Color>(Colors.grey.shade600),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Colors.grey.shade700, width: 2),
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(MyIcon.heart),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'MOVE TO WISHLIST',
                style: TextStyle(
                  height: 1,
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        onPressed: () {
          wishListfake.add(
            fakeList[index],
          );
          fakeList.removeAt(index);
        },
      ),
    );
  }
}
