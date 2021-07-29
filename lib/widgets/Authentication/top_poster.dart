import 'package:flutter/material.dart';

class AuthTopPoster extends StatelessWidget {
  const AuthTopPoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      fit: StackFit.loose,
      alignment: AlignmentDirectional.topEnd,
      children: [
        Image.asset("assets/Advertisement.jpg"),
        Padding(
          padding: const EdgeInsets.only(top: 45, right: 30),
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(Icons.close_outlined, color: Colors.black),
          ),
        ),
      ],
    ));
  }
}
