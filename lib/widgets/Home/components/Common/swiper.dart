import 'package:flutter/material.dart';
import 'package:joolux_demo/constants/constants.dart';
import '../../../../models/products/poster.dart';

class Swipers extends StatefulWidget {
  const Swipers({
    Key? key,
  }) : super(key: key);

  @override
  _SwipersState createState() => _SwipersState();
}

class _SwipersState extends State<Swipers> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late String _title;

  final List<Widget> _sliders = List.generate(
    posters.length,
    (index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Image.asset(
        posters[index].image,
        fit: BoxFit.fill,
      ),
    ),
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: posters.length);
    _title = posters.elementAt(0).title;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _setTitle(int index) {
    setState(() {
      _title = posters.elementAt(index).title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Clicked Swiper");
      },
      child: Container(
        height: 250,
        child: Stack(
          fit: StackFit.expand,
          children: [
            TabBarView(
              controller: _tabController,
              children: _sliders,
            ),
            Positioned(
              top: 200,
              left: DefaultPadding,
              right: DefaultPadding,
              bottom: 0,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _title,
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(_sliders.length, (index) {
                            return Padding(
                              padding: EdgeInsets.all(0),
                              child: PageIndicator(
                                index: index,
                                controller: _tabController,
                                setTitle: _setTitle,
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageIndicator extends StatefulWidget {
  final int index;

  final TabController controller;
  final Function setTitle;

  const PageIndicator({
    Key? key,
    required this.index,
    required this.controller,
    required this.setTitle,
  }) : super(key: key);

  @override
  _PageIndicatorState createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  late bool _expanded;

  @override
  void initState() {
    super.initState();
    _expanded = widget.index == widget.controller.index;

    // add listener to tabcontroller to update page indicator size
    widget.controller.addListener(() {
      widget.setTitle(widget.controller.index);
      setState(() {
        _expanded = widget.index == widget.controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 10),
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: _expanded ? Colors.black : Colors.grey,
      ),
    );
  }
}
