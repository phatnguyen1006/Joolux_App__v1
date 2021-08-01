import 'package:flutter/material.dart';


// Temp import
import 'package:joolux_demo/models/products/products.dart';
import 'package:joolux_demo/widgets/Layout/Views/grid_view_products.dart';
import 'package:joolux_demo/widgets/Home/components/cookie_page.dart';
import 'RecentSearches.dart';


class StartScreenSearch extends StatelessWidget {
  const StartScreenSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size.width,
          height: 0.2,
          decoration: BoxDecoration(color: Colors.black),
        ),
        Flexible(
          child: ListView(shrinkWrap: true, children: [
            // kiểm tra có recent search hay không -> API
            products.isNotEmpty ? RecentSearches() : Container(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: size.width,
                height: 10,
                decoration: BoxDecoration(color: Color(0xFFECEFF1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: size.width,
                height: 50,
                alignment: Alignment.centerLeft,
                child: Text(
                  "TRENDING ON TLC",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
            Container(
              height: size.width - 20,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  // Nếu có api thì sẽ làm ItemCard riêng
                  child: ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          // Di chuyển tới trang phù hợp
                          builder: (context) => CookiePage(),
                        )),
                    wishList: false,
                  ),
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  childAspectRatio: 2.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 10,
                width: size.width,
                decoration: BoxDecoration(color: Color(0xFFECEFF1)),
              ),
            ),
            // Gắn poster chuyển tới trang phù hợp
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 150,
                width: size.width,
                decoration: BoxDecoration(color: Colors.purpleAccent),
              ),
            ),
            Container(
              height: 100,
              width: size.width,
            )
          ]),
        ),
      ],
    );
  }
}
