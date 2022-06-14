import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/provider/bottombar_provider.dart';
import 'package:e_learning/screen/bnb/bookmarks.dart';
import 'package:e_learning/screen/bnb/home_v2.dart';
import 'package:e_learning/screen/bnb/mycourse.dart';
import 'package:e_learning/screen/bnb/profile.dart';
import 'package:e_learning/screen/bnb/search.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bnb/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentTab = [
    const Homev2(),
    const Bookmark(),
    const MyCourse(),
    const Search(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BottomNavigationBarProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColor.creamColor,
      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight * 0.98,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                border:
                    Border(top: BorderSide(color: Colors.grey, width: 0.5))),
            child: BottomNavigationBar(
              unselectedItemColor: Colors.grey,
              selectedItemColor: MyColor.primaryColor,
              currentIndex: provider.currentIndex,
              onTap: (index) {
                provider.currentIndex = index;
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.bookmark),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(null),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.search),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.user),
                  label: '',
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          heroTag: 'ok2',
          onPressed: () {
            provider.currentIndex = 2;
          },
          backgroundColor: provider.currentIndex == 2
              ? MyColor.primaryColor
              : MyColor.floatingButtonColor,
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: "My course",
          elevation: 4,
          child: const Icon(
            FontAwesomeIcons.playCircle,
          ),
        ),
      ),
    );
  }
}
