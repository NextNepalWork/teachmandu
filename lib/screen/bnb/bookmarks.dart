import 'package:badges/badges.dart';
import 'package:e_learning/constant/my_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'Bookmark',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 5),
              child: GestureDetector(
                child: Badge(
                  badgeColor: MyColor.primaryColor,
                  elevation: 0.0,
                  child: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                  badgeContent: const Text(
                    "0",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return SizedBox(
                height: 120,
                child: Card(
                  child: Column(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  margin: const EdgeInsets.only(
                                      left: 5, top: 5, bottom: 5),
                                  height: 110,
                                  child: const FlutterLogo(
                                    size: 40,
                                  ))),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Flutter Master Class",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Flutter',
                                          style: TextStyle(
                                              color: MyColor.primaryColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '-Ashish sir',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "5 hours-18 chapter",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Icon(
                                  FontAwesomeIcons.playCircle,
                                  color: MyColor.primaryColor,
                                  size: 40,
                                ),
                              ))
                        ],
                      ))
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
