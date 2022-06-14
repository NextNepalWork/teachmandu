import 'package:e_learning/screen/pageView/page_view1.dart';
import 'package:e_learning/screen/pageView/page_view2.dart';
import 'package:e_learning/screen/pageView/page_view3.dart';
import 'package:e_learning/screen/pageView/page_view4.dart';

import 'package:flutter/material.dart';

class Teachers extends StatefulWidget {
  const Teachers({Key? key}) : super(key: key);

  @override
  _TeachersState createState() => _TeachersState();
}

class _TeachersState extends State<Teachers> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                PageView1(
                  pageController: _pageController,
                ),
                PageView2(
                  pageController: _pageController,
                ),
                PageView3(pageController: _pageController),
                PageView4(pageController: _pageController),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
