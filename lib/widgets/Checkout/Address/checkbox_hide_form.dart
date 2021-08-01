import 'package:flutter/material.dart';

// Widgets
import './form_input.dart';

class CheckBoxHideForm extends StatefulWidget {
  @override
  _CheckBoxHideFormState createState() => _CheckBoxHideFormState();
}

class _CheckBoxHideFormState extends State<CheckBoxHideForm>
    with SingleTickerProviderStateMixin {
  late bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.all(Colors.black),
                  value: isChecked,
                  onChanged: (newValue) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                ),
                Text(
                  "Billing Address is same as Shipping Address",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          isChecked
              ? SizedBox(height: 0)
              : FormInputAddress(title: "Billing Address"),
        ],
      ),
    );
  }
}
