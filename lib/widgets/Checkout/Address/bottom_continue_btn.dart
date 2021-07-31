import 'package:flutter/material.dart';

class BottomContinueBtn extends StatelessWidget {
  const BottomContinueBtn({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 6,
          child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("\$500",
                      style: TextStyle(
                        color: Colors.red.shade600,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "(Duty/Taxes May Apply)",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.circle_notifications),
                          color: Color(0xFF676E79),
                          onPressed: () {
                            showCustomDialog(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade600),
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              child: Text(
                'CONTINUE',
                style: TextStyle(
                  height: 1.0,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                print('Continue');
              },
            ),
          ),
        ),
      ],
    );
  }
}

void showCustomDialog(BuildContext context) => showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => new AlertDialog(
        title: new Text("Duty/Taxes May Apply"),
        content:
            new Text("Duty/Taxes May Apply\nShipping & Insurance Included"),
        actions: <Widget>[
          TextButton(
            child: Text(
              'OK',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
