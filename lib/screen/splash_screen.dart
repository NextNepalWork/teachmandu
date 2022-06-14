import 'dart:async';

import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => isViewed != 0
            ? Navigator.pushNamedAndRemoveUntil(
                context, '/onboard', (route) => false)
            : Navigator.pushNamedAndRemoveUntil(
                context, '/', (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
          ),
          Image.asset(
            "assets/icons/appIcon.png",
            height: 90,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Teach",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Mandu",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: MyColor.primaryColor),
              ),
            ],
          ),
          Image.asset("assets/icons/mask.png"),
        ],
      ),
    );
  }
}
