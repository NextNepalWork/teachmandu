import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/model/onboard_model.dart';
import 'package:flutter/material.dart';

class PageView3 extends StatefulWidget {
  final PageController pageController;
  const PageView3({Key? key, required this.pageController}) : super(key: key);

  @override
  State<PageView3> createState() => _PageView3State();
}

class _PageView3State extends State<PageView3> {
  int? _selectedIndex2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {
                    setState(() {
                      widget.pageController.previousPage(
                          duration: const Duration(milliseconds: 180),
                          curve: Curves.easeIn);
                    });
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              const Text(
                "Select Your Price",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          elevation: 0,
          color: MyColor.creamColor,
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex2 = index;
                        });
                        widget.pageController.nextPage(
                            duration: const Duration(milliseconds: 180),
                            curve: Curves.easeIn);
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        priceCategory[index].title.toString(),
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight:
                                                (_selectedIndex2 == index)
                                                    ? FontWeight.bold
                                                    : FontWeight.normal,
                                            color: (_selectedIndex2 == index)
                                                ? Colors.blue
                                                : Colors.black),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 20,
                                        color: (_selectedIndex2 == index)
                                            ? Colors.blue
                                            : Colors.black,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Divider(
                                    thickness: 2,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (_, index) => const SizedBox(
                        height: 5,
                      ),
                  itemCount: priceCategory.length),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Container(
            height: 55,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/selectTeacher");
              },
              child: Text(
                "Register as a teacher".toUpperCase(),
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        )
      ],
    );
  }
}
