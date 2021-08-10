import 'package:flutter/material.dart';
import '../../../../models/products/sale_off.dart';

import '../../../Layout/app_pop_bar.dart';
import '../../../../constants/constants.dart';

class SaleOff extends StatelessWidget {
  final List<Sale> sale;
  const SaleOff({Key? key, required this.sale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Scaffold(
                    appBar: appPopBar(context, ""),
                    body: Container(
                      color: Colors.orange,
                    ),
                  ),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: sale.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: DefaultPadding,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) => imageIndex(index),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget imageIndex(index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Image.asset(sale[index].image),
        ),
      ],
    );
  }
}
