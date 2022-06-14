import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/model/onboard_model.dart';
import 'package:e_learning/utils/user_preferences.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  int isViewed = 0;
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () async {
                await UserPreferences.setTime(isViewed);
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Skip',
                  style: TextStyle(
                      fontSize: 18,
                      color: MyColor.primaryColor,
                      fontWeight: FontWeight.bold)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: pages.length,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    var page = pages[index];
                    return Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              page.title!,
                              style: const TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              page.title1!,
                              style: const TextStyle(
                                  color: MyColor.primaryColor,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          page.subTitle!,
                          style: const TextStyle(
                              color: MyColor.primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          height: 320,
                          child: Image.asset(page.image!),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 10.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pages.length,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 3.0),
                          width: 8.0,
                          height: 8,
                          decoration: BoxDecoration(
                              color: currentIndex == index
                                  ? MyColor.primaryColor
                                  : Colors.grey,
                              shape: BoxShape.circle),
                        )
                      ],
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: MyColor.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () async {
                    if (currentIndex == 2) {
                      await UserPreferences.setTime(isViewed);
                      Navigator.pushNamed(context, '/');
                    }

                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 180),
                        curve: Curves.easeIn);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        currentIndex == 2 ? "Get started" : "Next",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        size: 30,
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
