import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/model/onboard_model.dart';
import 'package:e_learning/provider/get_id_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class PageView1 extends StatefulWidget {
  final PageController pageController;
  const PageView1({Key? key, required this.pageController}) : super(key: key);

  @override
  State<PageView1> createState() => _PageView1State();
}

class _PageView1State extends State<PageView1> {
  int? _selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          child: Text(
            "Select Student's Level",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                    var student = studentCategory[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                          context.read<GETID>().setId(id: student.id);
                        });

                        widget.pageController.nextPage(
                            duration: const Duration(milliseconds: 180),
                            curve: Curves.easeIn);
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 5),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        student.title.toString(),
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight:
                                                (_selectedIndex == index)
                                                    ? FontWeight.bold
                                                    : FontWeight.normal,
                                            color: (_selectedIndex == index)
                                                ? Colors.blue
                                                : Colors.black),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 10,
                                        color: (_selectedIndex == index)
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
                  itemCount: studentCategory.length),
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
