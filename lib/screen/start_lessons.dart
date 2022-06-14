import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/screen/course_details.dart';
import 'package:e_learning/widgets/lessons.dart';
import 'package:e_learning/widgets/video_items.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class StartLesson extends StatefulWidget {
  const StartLesson({Key? key}) : super(key: key);

  @override
  State<StartLesson> createState() => _StartLessonState();
}

class _StartLessonState extends State<StartLesson> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 200,
              child: VideoItems(
                videoPlayerController:
                    VideoPlayerController.asset('assets/videos/video1.mp4'),
                looping: true,
                autoplay: false,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: DefaultTabController(
                    length: 3,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        TabBar(
                          padding: EdgeInsets.only(top: 10, bottom: 15),
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: Colors.black,
                          tabs: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text("Lesson"),
                            ),
                            Text("Description"),
                            Text("Discussion"),
                          ],
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: TabBarView(
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Lessons(),
                                  Text(
                                    "Sit sanctus consetetur sit erat gubergren dolores gubergren aliquyam amet, sanctus accusam dolores ipsum ipsum ipsum dolore sed. Dolore consetetur dolores takimata no elitr, dolor duo invidunt ut ipsum voluptua sit duo justo. Sit vero elitr diam dolores at, takimata invidunt sanctus dolores sed ut lorem, consetetur sanctus et duo elitr lorem est ut et, voluptua elitr gubergren diam sanctus. Et rebum tempor ea gubergren takimata sea sit clita, ipsum.",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text("Discussion"),
                                ]),
                          ),
                        )
                      ],
                    ))),
          ),
        ],
      )),
    );
  }
}
