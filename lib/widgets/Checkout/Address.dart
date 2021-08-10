import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Components Widget
import '../Layout/app_pop_bar.dart';
import './address/form_input_address.dart';
import './address/checkbox_hide_form.dart';
import './address/chose_delivery_mode.dart';
import './address/bottom_continue_btn.dart';
import './address/price_detail.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appPopBar(context, "Address"),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          FormInputAddress(title: "Shipping Address"),
          CheckBoxHideForm(),
          ChoseDelivery(),
          PriceDetail(),
        ],
      ),
      persistentFooterButtons: [
        BottomContinueBtn(),
      ],
    );
  }
}
