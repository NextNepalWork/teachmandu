import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    'New Password',
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
                height: 10,
              ),
              CustomTextField(
                left: 0,
                right: 0,
                iconData: Icons.lock,
                inputType: TextInputType.visiblePassword,
                hint: "Enter password",
                issecured: true,
                validator: (password) {
                  if (password!.isEmpty) {
                    return "";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                left: 0,
                right: 0,
                iconData: Icons.lock,
                inputType: TextInputType.visiblePassword,
                hint: "Confirm your password",
                issecured: true,
                validator: (password) {
                  if (password!.isEmpty) {
                    return "";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColor.primaryColor),
                  child: const Center(
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't Receive? "),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Click Here',
                        style: TextStyle(
                            fontSize: 16,
                            color: MyColor.primaryColor,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
