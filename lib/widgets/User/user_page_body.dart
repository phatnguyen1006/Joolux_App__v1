import 'package:flutter/material.dart';
// proxyChange
import '../../providers/authentication/auth.dart';
// return when logout
import '../../app_screen.dart';

class UserPageBody extends StatefulWidget {
  @override
  _UserPageBodyState createState() => _UserPageBodyState();
}

class _UserPageBodyState extends State<UserPageBody> {
  final user = Auth().user;

  Future<void> _signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: NetworkImage(user?.photoURL ??
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZfYb4CWzn9zbn-jLTwei46uk0dMEgMsh3gQ&usqp=CAU'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user?.displayName ?? "User Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'MyFlutterApp',
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          user?.email ?? "usergmail@gmail.com",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'MyFlutterApp',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            decoration: BoxDecoration(color: Colors.white),
            child: ButtonTheme(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle_outlined),
                        SizedBox(width: 15),
                        Text(
                          'My Profile',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            decoration: BoxDecoration(color: Colors.white),
            child: ButtonTheme(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.shopping_bag_outlined),
                        SizedBox(width: 15),
                        Text(
                          'My Items',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            decoration: BoxDecoration(color: Colors.white),
            child: ButtonTheme(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.attach_money_sharp),
                        SizedBox(width: 15),
                        Text(
                          'My Purchases',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            decoration: BoxDecoration(color: Colors.white),
            child: ButtonTheme(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_balance_wallet_outlined),
                        SizedBox(width: 15),
                        Text(
                          'Cash',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    Row(children: [
                      Text('\$0', style: TextStyle(fontSize: 16.0)),
                      SizedBox(width: 15),
                      Icon(Icons.arrow_forward_ios),
                    ]),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            decoration: BoxDecoration(color: Colors.white),
            child: ButtonTheme(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.language_outlined),
                        SizedBox(width: 15),
                        Text(
                          'Country & Language',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            decoration: BoxDecoration(color: Colors.white),
            child: ButtonTheme(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.info_outlined),
                        SizedBox(width: 15),
                        Text(
                          'About Us',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                _signOut();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => MyScreen(
                          currentPage: 0,
                        )));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                elevation: MaterialStateProperty.all<double>(12.0),
              ),
              child: Text("LOG OUT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
