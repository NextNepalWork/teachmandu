import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/model/onboard_model.dart';
import 'package:e_learning/provider/theme_provider.dart';
import 'package:e_learning/screen/get_support.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: MyColor.primaryColor,
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'More',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Drawer(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
                children: List.generate(
              profileCategory.length,
              (index) => SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => profileItems[index]));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                    ),
                    horizontalTitleGap: 12.0,
                    tileColor: const Color(0xfff2f2f2),
                    leading: CircleAvatar(
                        backgroundColor: const Color(0xffd7d7d7),
                        radius: 25,
                        child: Icon(
                          profileCategory[index].icon!,
                          color: Colors.black,
                        )),
                    title: Text(profileCategory[index].title!),
                  ),
                ),
              ),
            )

                // ListTile(
                //   onTap: () {
                // Navigator.pushNamed(context, '/login');
                //   },
                //   leading: const Icon(
                //     Icons.login_outlined,
                //   ),
                //   title: const Text("Login"),
                // ),
                // ExpansionTile(
                //   leading: const Icon(Icons.dark_mode),
                //   textColor: MyColor.primaryColor,
                //   iconColor: MyColor.primaryColor,
                //   title: const Text("Theme"),
                //   children: [
                //     RadioListTile<ThemeMode>(
                //         title: const Text('Light Mode'),
                //         groupValue: context.watch<ThemeProvider>().getTheme,
                //         value: ThemeMode.light,
                //         onChanged: context.read<ThemeProvider>().setTheme),
                //     RadioListTile<ThemeMode>(
                //         title: const Text('Dark Mode'),
                //         groupValue: context.watch<ThemeProvider>().getTheme,
                //         value: ThemeMode.dark,
                //         onChanged: context.read<ThemeProvider>().setTheme),
                //     RadioListTile<ThemeMode>(
                //         title: const Text('System Mode'),
                //         groupValue: context.watch<ThemeProvider>().getTheme,
                //         value: ThemeMode.system,
                //         onChanged: context.read<ThemeProvider>().setTheme),
                //   ],
                // ),

                ),
          ),
        ),
      ),
    );
  }
}

final profileItems = [
  const SizedBox(),
  const SizedBox(),
  const SizedBox(),
  const SizedBox(),
  const GetSupport(),
  const SizedBox(),
  const SizedBox(),
];
