import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class GetSupport extends StatefulWidget {
  const GetSupport({Key? key}) : super(key: key);

  @override
  State<GetSupport> createState() => _GetSupportState();
}

class _GetSupportState extends State<GetSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 30,
                      color: MyColor.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Support',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset("assets/icons/support.png"),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Get Support",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "For any support regards your orders \nor deliveries please feel free to speak \n                 with us at below.",
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Call Us- +9807150500",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Email Us-ashishdahal490@gmail.com",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      )),
    );
  }
}
