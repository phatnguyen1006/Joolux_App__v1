import 'package:flutter/material.dart';
import 'hero_dialog_route.dart';
import 'style.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  void changeLoading(BuildContext context, bool _isLoading) {
    if (_isLoading == true) {
      Navigator.of(context).push(HeroDialogRoute(
          builder: (context) => Center(
                child: _LoaderPopupCard(),
              )));
    }
    if (_isLoading == false) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return _LoaderCard();
  }
}

class _LoaderCard extends StatefulWidget {
  const _LoaderCard({
    Key? key,
  }) : super(key: key);

  @override
  __LoaderCardState createState() => __LoaderCardState();
}

class __LoaderCardState extends State<_LoaderCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(child: Text('Hello')),
    );
  }
}

class _LoaderPopupCard extends StatelessWidget {
  const _LoaderPopupCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}
