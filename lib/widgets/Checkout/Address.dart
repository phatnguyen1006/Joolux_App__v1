import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joolux_demo/widgets/Checkout/Address/form_input.dart';

// Components Widget
import '../Layout/app_pop_bar.dart';
import './Address/form_input.dart';
import './Address/checkbox_hide_form.dart';
import './Address/chose_delivery_mode.dart';
import './Address/bottom_continue_btn.dart';
import './Address/price_detail.dart';

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
