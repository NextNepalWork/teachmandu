import 'package:blur/blur.dart';
import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/model/table_model.dart';
import 'package:e_learning/widgets/video_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:video_player/video_player.dart';

class TeacherProfile extends StatefulWidget {
  const TeacherProfile({Key? key}) : super(key: key);

  @override
  _TeacherProfileState createState() => _TeacherProfileState();
}

class _TeacherProfileState extends State<TeacherProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 240,
                  width: double.infinity,
                  color: MyColor.primaryColor,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            shape: BoxShape.circle,
                            color: Colors.white,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/taylor.png"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Taylor Swift",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "American singer-songwriter",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
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
                        height: 5,
                      ),
                      const Text(
                        "Rs.10 lakh",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 210),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 55,
                      width: 220,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Taylor Swift",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          "Teacher ID: taylor420",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          height: 50,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.orange),
                                            onPressed: () {},
                                            child: Text(
                                                "book by call".toUpperCase()),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          height: 50,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.orange),
                                            onPressed: () {},
                                            child: Text(
                                                "book by sms".toUpperCase()),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          height: 50,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.black
                                                    .withOpacity(0.5)),
                                            onPressed: () {},
                                            child: Text("close".toUpperCase()),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: const Text(
                            "Book This Teacher",
                            style: TextStyle(
                                color: MyColor.primaryColor,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: [
                myColumn(
                    title: "About Me",
                    subTitle:
                        "Vero nonumy et et ea amet voluptua sanctus rebum dolores est, at labore et sed accusam rebum eirmod voluptua. Sed amet sit amet dolor sanctus gubergren, consetetur duo ipsum sanctus."),
                const SizedBox(
                  height: 10,
                ),
                myColumn(
                    title: "About My Sessions",
                    subTitle:
                        "Vero nonumy et et ea amet voluptua sanctus rebum dolores est, at labore et sed accusam rebum eirmod voluptua. Sed amet sit amet dolor sanctus gubergren, consetetur duo ipsum sanctus."),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Qualification",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          customColumn(title: "Board", subtitle: "Neosphere"),
                          customColumn(
                              title: "Degree",
                              subtitle: "Diploma In Degree & Animation"),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        thickness: 1,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Table(
                    border: TableBorder.all(color: Colors.grey),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        children: columnList
                            .map((data) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: data.child!,
                                ))
                            .toList(),
                      ),
                      TableRow(
                        children: rowList
                            .map((data) => Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: data.child!,
                                ))
                            .toList(),
                      ),
                      TableRow(
                        children: rowList1
                            .map((data) => Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: data.child!,
                                ))
                            .toList(),
                      ),
                      TableRow(
                        children: rowList2
                            .map((data) => Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: data.child!,
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Course",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          customColumn(title: "Subject", subtitle: "Flutter"),
                          customColumn(title: "Level", subtitle: "Advanced"),
                          customColumn(title: "Price", subtitle: "Rs.50000"),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 355,
                        decoration: BoxDecoration(
                            color: MyColor.creamColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Icon(
                                    Icons.lightbulb,
                                    color: Colors.orange,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "How it works?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(
                                      "Innovative and deadline-driven Designer with 1+years of experiences designing and developing user centered digital print marketing material.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: SizedBox(
                                  height: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: VideoItems(
                                      videoPlayerController:
                                          VideoPlayerController.asset(
                                        'assets/videos/teachMandu.mp4',
                                      ),
                                      looping: true,
                                      autoplay: false,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Colors.orange,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {},
                            child: Text("book this teacher".toUpperCase())),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                side: const BorderSide(color: Colors.grey),
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {},
                            child: const Text(
                              "Booking Open 24hrs-7 days",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Related Teacher",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GridView.builder(
                              itemCount: 4,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 0.85,
                                      crossAxisCount: 2),
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  elevation: 0,
                                  color: MyColor.creamColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      const CircleAvatar(
                                        radius: 50,
                                        backgroundImage: AssetImage(
                                            "assets/images/taylor.jpg"),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "Taylor Swift ",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: MyColor.primaryColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "Rs.10000",
                                        style: TextStyle(
                                            color: Colors.orange, fontSize: 14),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      RatingBarIndicator(
                                        rating: 2.75,
                                        itemBuilder: (context, index) =>
                                            const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        itemCount: 5,
                                        itemSize: 15.0,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'Flutter Developer',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ]),
            )),
          ],
        ),
      ),
    );
  }

  customColumn({String? title, String? subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
        ),
        Text(subtitle!),
      ],
    );
  }

  myColumn({String? title, String? subTitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subTitle!,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
