import 'package:e_learning/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class PageView4 extends StatefulWidget {
  final PageController pageController;
  const PageView4({Key? key, required this.pageController}) : super(key: key);

  @override
  State<PageView4> createState() => _PageView4State();
}

class _PageView4State extends State<PageView4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
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
                "Input Your Location",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        CustomTextField(
          left: 5,
          right: 5,
          iconData: Icons.search,
          inputType: TextInputType.text,
          hint: "Search Your Location",
          issecured: false,
          validator: (password) {
            if (password!.isEmpty) {
              return "";
            } else {
              return null;
            }
          },
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 180,
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                "assets/images/map.png",
                fit: BoxFit.cover,
              ),
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
                "find your teacher".toUpperCase(),
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
