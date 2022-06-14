import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/model/onboard_model.dart';
import 'package:e_learning/provider/get_id_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class PageView2 extends StatefulWidget {
  final PageController pageController;
  const PageView2({Key? key, required this.pageController}) : super(key: key);

  @override
  State<PageView2> createState() => _PageView2State();
}

class _PageView2State extends State<PageView2> {
  int? _selectedIndex1;
  @override
  Widget build(BuildContext context) {
    var subjectId = context.read<GETID>().id;
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
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  )),
              const Text(
                "Select Your Subject",
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
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex1 = index;
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
                                        subjectId == 1
                                            ? id1Category[index]
                                                .title
                                                .toString()
                                            : subjectId == 2
                                                ? id2Category[index].title!
                                                : subjectId == 3
                                                    ? id3Category[index].title!
                                                    : subjectId == 4
                                                        ? id4Category[index]
                                                            .title!
                                                        : id1Category[index]
                                                            .title
                                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight:
                                                (_selectedIndex1 == index)
                                                    ? FontWeight.bold
                                                    : FontWeight.normal,
                                            color: (_selectedIndex1 == index)
                                                ? Colors.blue
                                                : Colors.black),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 20,
                                        color: (_selectedIndex1 == index)
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
                  itemCount: subjectId == 1
                      ? id1Category.length
                      : subjectId == 2
                          ? id2Category.length
                          : subjectId == 3
                              ? id3Category.length
                              : subjectId == 4
                                  ? id4Category.length
                                  : id1Category.length),
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
