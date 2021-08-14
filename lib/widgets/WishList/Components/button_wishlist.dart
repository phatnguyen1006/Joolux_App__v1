import 'package:flutter/material.dart';

//Widgets
import '../../Checkout/address.dart';
//models
import '../../../models/WishList/fakeList.dart';

class ButtonClick extends StatelessWidget {
  final List<FakeList> fakeList;
  final int index;
  const ButtonClick({Key? key, required this.fakeList, required this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey.shade600),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(20)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.grey.shade700),
                      ),
                    ),
                  ),
                  child: Text(
                    'SHARE',
                    style: TextStyle(
                      height: 1.0,
                      fontSize: 15,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Address(),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey.shade600),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                child: Text(
                  'ADD TO SHOPPING CART',
                  style: TextStyle(
                    height: 1.0,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  fakeCart.add(
                    fakeList[index],
                  );
                  fakeList.removeAt(index);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
