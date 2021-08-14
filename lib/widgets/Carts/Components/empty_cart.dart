import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//Widgets

import '../../../app_screen.dart';

class EmptyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox.fromSize(
                size: Size.fromHeight(120),
                child: FittedBox(
                  child: IconButton(
                    icon: SvgPicture.asset("assets/icons/cart.svg",
                        color: Color(0xFF545D68)),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: Text(
                  'Your Shopping Cart is Empty',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 20, left: 10, right: 10),
            child: InkWell(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Center(
                  child: Text(
                    'Continue Shopping',
                    style: TextStyle(
                      height: 1,
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyScreen(currentPage: 0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
