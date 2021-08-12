import 'package:flutter/material.dart';

class IconBtnWithCounter extends StatelessWidget {
  final Icon icon;
  final int numOfitem;
  final GestureTapCallback press;
  const IconBtnWithCounter({
    Key? key,
    required this.icon,
    this.numOfitem = 0,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 5, top: 12, bottom: 12, right: 10),
            child: icon,
          ),
          if (numOfitem != 0)
            Positioned(
              top: 5,
              right: 7,
              child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: TextStyle(
                      fontSize: 12,
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
