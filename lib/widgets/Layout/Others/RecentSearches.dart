import 'package:flutter/material.dart';

// temp import
import 'package:joolux_demo/models/products/products.dart';
import 'package:joolux_demo/widgets/Home/components/cookie_page.dart';
import 'SearchItemCard.dart';

class RecentSearches extends StatefulWidget {
  const RecentSearches({Key? key}) : super(key: key);

  @override
  _RecentSearchesState createState() => _RecentSearchesState();
}

class _RecentSearchesState extends State<RecentSearches> {
  late bool isEdit = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: size.width,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "RECENT SEARCHES",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: isEdit
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              isEdit = !isEdit;
                            });
                            print("Cập nhật Recent Search");
                          },
                          child: Text("Done"))
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              isEdit = !isEdit;
                            });
                            print("Chỉnh sửa Recent Search");
                          },
                          child: Text("Edit")),
                )
              ],
            ),
            Container(
              height: size.width / 3 - 10,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: SearchItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          //Di chuyển tới trang phù hợp
                          builder: (context) => CookiePage(),
                        )),
                    isEdit: isEdit,
                  ),
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  childAspectRatio: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
