import 'package:badges/badges.dart';
import 'package:e_learning/constant/my_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectTeacher extends StatelessWidget {
  const SelectTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.search,
                  size: 20,
                  color: Colors.grey,
                )),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 5),
              child: GestureDetector(
                child: Badge(
                  badgeColor: MyColor.primaryColor,
                  elevation: 0.0,
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.grey,
                  ),
                  badgeContent: const Text(
                    "0",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_back_ios)),
                          const Text(
                            "Select Your Teacher",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_list_outlined,
                            size: 30,
                          ))
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (_, index) {
                      return Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.pushNamed(context, '/teacherProfile');
                            },
                            contentPadding: EdgeInsets.zero,
                            leading: const CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage("assets/images/taylor.png"),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Taylor Swift"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Kathmandu",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: MyColor.primaryColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                            subtitle: const Text("Bachelors"),
                            horizontalTitleGap: 5.0,
                            minVerticalPadding: 0.0,
                            trailing: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                RatingBarIndicator(
                                  rating: 2.75,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 15.0,
                                ),
                                const SizedBox(
                                  height: 22,
                                ),
                                const Text(
                                  "Rs.1000",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: MyColor.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 2,
                          )
                        ],
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
