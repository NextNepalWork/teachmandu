import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/model/onboard_model.dart';
import 'package:e_learning/provider/cart_provider.dart';
import 'package:e_learning/screen/start_lessons.dart';
import 'package:e_learning/widgets/video_items.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  ScrollController? _scrollController;
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
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingBarIndicator(
                      rating: 2.75,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                    ),
                    const Text(
                      "Advanced Flutter Course",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          "By: ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Ashish Dahal",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: MyColor.primaryColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 220,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: MyColor.primaryColor),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const StartLesson()));
                            },
                            child: const Text(
                              "Select Lessons",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.favorite,
                                    color: MyColor.primaryColor,
                                  ),
                                  Text('320')
                                ],
                              )),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: InkWell(
                            onTap: () {
                              context
                                  .read<CartProvider>()
                                  .addToCart(model: courseDetails[0]);
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
                                Icons.shopping_cart,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Rebum dolor amet ipsum elitr amet, et labore dolores labore amet. Labore clita elitr amet kasd sed justo sea et dolore. Sit diam et ipsum ipsum, tempor labore takimata duo ea. Ipsum sadipscing ipsum aliquyam sea sanctus, diam diam accusam gubergren amet elitr magna ipsum ea, ipsum sit et amet dolor magna ipsum sanctus gubergren, dolor erat eos takimata duo..',
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Participants",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/illu.jpg"),
                      ),
                      title: const Text("Gagan puri"),
                      subtitle: const Text("How is your course going?"),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text("Active now"),
                          Icon(Icons.message),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/illu.jpg"),
                      ),
                      title: const Text("Gagan puri"),
                      subtitle: const Text("How is your course going?"),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text("Active now"),
                          Icon(Icons.message),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/illu.jpg"),
                      ),
                      title: const Text("Gagan puri"),
                      subtitle: const Text("How is your course going?"),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text("Active now"),
                          Icon(Icons.message),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
