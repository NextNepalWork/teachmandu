import 'package:e_learning/constant/my_color.dart';
import 'package:flutter/material.dart';

class Lessons extends StatelessWidget {
  const Lessons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Flutter Master Class",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            ),
            Text("43.4k Students"),
            SizedBox(
              width: 10,
            ),
            Text(
              "5349 Reviews",
              style: TextStyle(color: MyColor.primaryColor),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 2,
          child: Divider(
            thickness: 1,
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/illu.jpg"),
          ),
          title: const Text("Ashish Dahal"),
          subtitle: const Text("Flutter Instructor"),
          trailing: Container(
            decoration:
                BoxDecoration(border: Border.all(color: MyColor.primaryColor)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.add,
                  color: MyColor.primaryColor,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'Follow',
                  style: TextStyle(
                      color: MyColor.primaryColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 2,
          child: Divider(
            thickness: 1,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "8 Lessons-1hr 30min",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return Card(
                elevation: 0,
                child: SizedBox(
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(left: 10, right: 10),
                    title: Text("${index + 1}. Flutter Master class"),
                    subtitle: const Text("10:30"),
                    trailing: InkWell(
                        onTap: () {}, child: const Icon(Icons.download)),
                  ),
                ),
              );
            })
      ],
    );
  }
}
