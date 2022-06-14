import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/model/onboard_model.dart';
import 'package:e_learning/screen/bnb/bookmarks.dart';
import 'package:e_learning/screen/bnb/mycourse.dart';
import 'package:e_learning/screen/bnb/profile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            color: MyColor.creamColor,
            width: 220,
            child: Drawer(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: MyColor.primaryColor,
                      height: 60,
                      width: double.infinity,
                      child: const Center(
                          child: Text(
                        "Menu",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      )),
                    ),
                    const UserAccountsDrawerHeader(
                        margin: EdgeInsets.only(left: 50),
                        decoration: BoxDecoration(color: Colors.transparent),
                        currentAccountPictureSize: Size.square(80),
                        currentAccountPicture: CircleAvatar(
                          //  backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage("assets/images/taylor.png"),
                        ),
                        accountName: Text(
                          "Taylor Swift",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        accountEmail: Text(
                          "   Student",
                          style: TextStyle(color: MyColor.primaryColor),
                        )),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 80.0),
                      child: Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: MyColor.primaryColor),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Column(
                      children: List.generate(
                          menuCategory.length,
                          (index) => ListTile(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => tabItems[index]));
                                },
                                horizontalTitleGap: 0.0,
                                leading: Image.asset(
                                  menuCategory[index].image!,
                                  height: 18,
                                  width: 18,
                                ),
                                title: Text(menuCategory[index].title!),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 18,
                                ),
                              )),
                    )
                  ],
                ),
              ),
            )));
  }
}

final tabItems = [
  const SizedBox(),
  const Email(),
  const SizedBox(),
  const SizedBox(),
  const Bookmark(),
  const ProfileScreen(),
  const SizedBox(),
];
