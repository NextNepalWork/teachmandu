import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/model/onboard_model.dart';
import 'package:e_learning/provider/cart_provider.dart';
import 'package:e_learning/screen/bnb/mycourse.dart';
import 'package:e_learning/screen/teachers.dart';
import 'package:e_learning/widgets/my_drawer.dart';
import 'package:e_learning/widgets/tab_items/tab1_my_course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';
import 'package:provider/src/provider.dart';

class Homev2 extends StatefulWidget {
  const Homev2({Key? key}) : super(key: key);

  @override
  State<Homev2> createState() => _Homev2State();
}

class _Homev2State extends State<Homev2> with TickerProviderStateMixin {
  TabController? _tabController;
  int _selectedIndex = 0;
  @override
  void initState() {
    _tabController = TabController(
        initialIndex: _selectedIndex, length: tabCategory.length, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65.0),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            title: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'TeachMandu',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/search");
                  },
                  icon: const Icon(
                    FontAwesomeIcons.search,
                    size: 20,
                    color: Colors.grey,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                  child: Badge(
                    badgeColor: MyColor.primaryColor,
                    elevation: 0.0,
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.grey,
                    ),
                    badgeContent: Text(
                      context.watch<CartProvider>().cart.length.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Hi,Ashish",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("You have completed 6 \n lessons this week")
                    ],
                  ),
                ),
                Expanded(
                    child: Image.asset(
                  "assets/icons/mask.png",
                  fit: BoxFit.fill,
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TabBar(
            labelPadding: const EdgeInsets.only(left: 2.5, right: 2.5),
            controller: _tabController,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: const BoxDecoration(color: null),
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: List.generate(
              _tabController!.length,
              (index) => SizedBox(
                height: 93,
                width: 100,
                child: Card(
                  color: _selectedIndex == index
                      ? MyColor.primaryColor
                      : Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, top: 5),
                        child: Image.asset(
                          tabCategory[index].image.toString(),
                          height: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        tabCategory[index].title.toString(),
                        style: TextStyle(
                            color: index == _selectedIndex
                                ? Colors.white
                                : Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: const [
                  TabViewMyCourse(),
                  Teachers(),
                  Text("Video"),
                  Text("Note"),
                  Text("School"),
                ]),
          ),
        ]));
  }
}
