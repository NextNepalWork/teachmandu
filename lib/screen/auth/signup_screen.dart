import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? _isChecked = false;
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
                    'Sign Up',
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
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomTextField(
                      left: 0,
                      right: 0,
                      iconData: Icons.person,
                      inputType: TextInputType.text,
                      hint: "Enter Full Name",
                      issecured: false,
                      validator: (password) {
                        if (password!.isEmpty) {
                          return "";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomTextField(
                      left: 0,
                      right: 0,
                      iconData: null,
                      inputType: TextInputType.text,
                      hint: "Enter Last Name",
                      issecured: false,
                      validator: (password) {
                        if (password!.isEmpty) {
                          return "";
                        } else {
                          return null;
                        }
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomTextField(
                      left: 0,
                      right: 0,
                      iconData: Icons.phone,
                      inputType: TextInputType.phone,
                      hint: "Enter Phone Number",
                      issecured: false,
                      validator: (password) {
                        if (password!.isEmpty) {
                          return "";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomTextField(
                      left: 0,
                      right: 0,
                      iconData: Icons.date_range,
                      inputType: TextInputType.datetime,
                      hint: "yy/mm/dd",
                      issecured: false,
                      validator: (password) {
                        if (password!.isEmpty) {
                          return "";
                        } else {
                          return null;
                        }
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                left: 0,
                right: 0,
                iconData: Icons.location_city,
                inputType: TextInputType.text,
                hint: "City",
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
                height: 10,
              ),
              CustomTextField(
                left: 0,
                right: 0,
                iconData: Icons.location_on,
                inputType: TextInputType.text,
                hint: "Enter Your address",
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
                height: 10,
              ),
              CustomTextField(
                left: 0,
                right: 0,
                iconData: Icons.email,
                inputType: TextInputType.emailAddress,
                hint: "Enter Email Address",
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
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomTextField(
                      left: 0,
                      right: 0,
                      iconData: Icons.lock,
                      inputType: TextInputType.visiblePassword,
                      hint: "Enter Password",
                      issecured: true,
                      validator: (password) {
                        if (password!.isEmpty) {
                          return "";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomTextField(
                      left: 0,
                      right: 0,
                      iconData: null,
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
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Checkbox(
                      activeColor: MyColor.primaryColor,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value;
                        });
                      },
                      value: _isChecked,
                    ),
                  ),
                  const Text("  Accept the", style: TextStyle(fontSize: 15)),
                  const Text(
                    " Terms & Conditions",
                    style: TextStyle(
                        color: MyColor.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
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
                      "SIGN UP",
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
                  const Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Signin',
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
