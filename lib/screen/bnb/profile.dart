import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/widgets/custom_textfield.dart';
import 'package:e_learning/widgets/profile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      drawer: const ProfileDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'Profile',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                icon: const Icon(
                  Icons.settings,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 120,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: MyColor.creamColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/images/taylor.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.camera_alt,
                                    color: MyColor.primaryColor,
                                    size: 28,
                                  ),
                                ),
                              )
                            ],
                          )),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Taylor Swift',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/edit');
                                      },
                                      child: const Icon(
                                        Icons.edit,
                                        size: 28,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Taylorswift123',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: MyColor.primaryColor),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'taylorswift123@gmail.com',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                left: 5,
                right: 5,
                iconData: Icons.person,
                inputType: TextInputType.visiblePassword,
                hint: "Name",
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
                left: 5,
                right: 5,
                iconData: Icons.email,
                inputType: TextInputType.emailAddress,
                hint: "Email",
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
                left: 5,
                right: 5,
                iconData: Icons.phone,
                inputType: TextInputType.number,
                hint: "Mobile no.",
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
                left: 5,
                right: 5,
                iconData: Icons.location_on,
                inputType: TextInputType.text,
                hint: "Address",
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
                left: 5,
                right: 5,
                iconData: Icons.location_city,
                inputType: TextInputType.text,
                hint: "Country",
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
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: MyColor.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text(
                      "Logout",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
