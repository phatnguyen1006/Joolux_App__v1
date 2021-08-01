import 'package:flutter/material.dart';

//Widgets
// import '../../Checkout/Address.dart';

class FormInputAddress extends StatelessWidget {
  final String title;
  const FormInputAddress({
    Key? key,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
      color: Colors.grey.shade200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey.shade100,
            alignment: Alignment.topLeft,
            // padding: EdgeInsets.symmetric(horizontal: 15),
            height: 40,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Text("First Name*", style: TextStyle(fontSize: 16)),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text("Last Name*", style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        hintText: 'Enter first name',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        hintText: 'Enter last name',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text("Address*", style: TextStyle(fontSize: 16)),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: InputBorder.none,
                hintText: 'Home Number, Building Name',
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Text("City*", style: TextStyle(fontSize: 16)),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child:
                        Text("State/Province*", style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        hintText: 'Enter city',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        hintText: 'Enter State/Province',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text("Country*", style: TextStyle(fontSize: 16)),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: InputBorder.none,
              ),
              initialValue: "Vietnam",
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text("Postal Code", style: TextStyle(fontSize: 16)),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
                decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: InputBorder.none,
              hintText: 'Enter Postal Code',
            )),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text("Contact Number*", style: TextStyle(fontSize: 16)),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                    ),
                    initialValue: "VN+84",
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      hintText: 'Enter Phone Number',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
