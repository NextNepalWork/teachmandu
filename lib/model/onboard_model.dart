import 'package:e_learning/constant/my_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnBordModel {
  final int? id;
  final String? title;
  final String? title1;
  final String? subTitle;
  final double? price;
  final String? image;
  final IconData? icon;
  final Color? color;
  final Color? color1;

  OnBordModel(
      {this.title,
      this.title1,
      this.id,
      this.price,
      this.icon,
      this.subTitle,
      this.image,
      this.color,
      this.color1});
}

final pages = <OnBordModel>[
  OnBordModel(
      title: "Welcome to",
      title1: "e-Learn",
      subTitle: "Explore Us",
      image: "assets/images/page1.png"),
  OnBordModel(
      title: "Welcome to",
      title1: "e-Learn",
      subTitle: "Explore Us",
      image: "assets/images/page2.png"),
  OnBordModel(
      title: "Welcome to",
      title1: "e-Learn",
      subTitle: "Explore Us",
      image: "assets/images/page3.png"),
];
final carouselImages = <OnBordModel>[
  OnBordModel(image: "assets/images/banner.jpg"),
  OnBordModel(image: "assets/images/banner.jpg"),
  OnBordModel(image: "assets/images/banner.jpg"),
];
final topCourses = <OnBordModel>[
  OnBordModel(
    image: "assets/images/paint.jpg",
    title: "Painting",
    title1: "Rs.300",
    subTitle: "Lied mein der wie noch ihr lauf was lied es",
  ),
  OnBordModel(
    image: "assets/images/science.jpg",
    title: "Science",
    subTitle: "Lied mein der wie noch ihr lauf was lied es",
    title1: "Rs.500",
  ),
  OnBordModel(
      image: "assets/images/development.png",
      title: "Development",
      subTitle: "Lied mein der wie noch ihr lauf was lied es",
      title1: "Rs.700"),
];
final myCourse = <OnBordModel>[
  OnBordModel(
      color: MyColor.lightBlue,
      color1: MyColor.darkBlue,
      title: "Flutter Master Class",
      title1: "Flutter 18 chapter",
      subTitle: "By: Ashish sir"),
  OnBordModel(
      color: MyColor.lightRed,
      color1: MyColor.darkRed,
      title: "Frontend Design Master Class",
      title1: "Design 20 chapter",
      subTitle: "By: Martin sir"),
  OnBordModel(
      color: MyColor.lightPurple,
      color1: MyColor.darkPurple,
      title: "Laravel & PHP Master Class",
      title1: "40 chapter",
      subTitle: "By: Muni sir"),
  OnBordModel(
      color: MyColor.lightGreen,
      color1: MyColor.darkGreen,
      title: "RectJs Master Class",
      title1: "RectJs 30 chapter",
      subTitle: "By: Sandip sir"),
];
final courseCounter = [
  OnBordModel(title: "10", title1: "Course"),
  OnBordModel(title: "543", title1: "Chapters"),
  OnBordModel(title: "74", title1: "Ongoing"),
  OnBordModel(title: "54", title1: "Completed"),
];
final tabCategory = [
  OnBordModel(title: "My course", image: "assets/icons/courses.png"),
  OnBordModel(title: "Teachers", image: "assets/icons/teacher.png"),
  OnBordModel(title: "Video", image: "assets/icons/video.png"),
  OnBordModel(title: "Note", image: "assets/icons/note.png"),
  OnBordModel(title: "School", image: "assets/icons/school.png"),
];
final studentCategory = [
  OnBordModel(
    id: 1,
    title: "Bellow Class 9",
  ),
  OnBordModel(
    id: 2,
    title: "See",
  ),
  OnBordModel(
    id: 3,
    title: "+2",
  ),
  OnBordModel(
    id: 4,
    title: "A Level",
  ),
];
final subjectCategory = [
  OnBordModel(
    title: "Science",
  ),
  OnBordModel(
    title: "Math",
  ),
  OnBordModel(
    title: "OPT Math",
  ),
  OnBordModel(
    title: "All the above",
  ),
];
final id1Category = [
  OnBordModel(
    title: "Science",
  ),
  OnBordModel(
    title: "Math",
  ),
  OnBordModel(
    title: "OPT Math",
  ),
  OnBordModel(
    title: "All the above",
  ),
];
final courseDetails = [
  OnBordModel(
      title: "Advanced Flutter Course", title1: "Ashish Dahal", price: 10000.0)
];

final id2Category = [
  OnBordModel(
    title: "Science",
  ),
  OnBordModel(
    title: "Math",
  ),
  OnBordModel(
    title: "OPT Math",
  ),
  OnBordModel(
    title: "All the above",
  ),
];
final id3Category = [
  OnBordModel(
    title: "Physics",
  ),
  OnBordModel(
    title: "Chemistry",
  ),
  OnBordModel(
    title: "Math",
  ),
  OnBordModel(
    title: "Biology",
  ),
  OnBordModel(
    title: "All the above",
  ),
];
final id4Category = [
  OnBordModel(
    title: "Physics",
  ),
  OnBordModel(
    title: "Chemistry",
  ),
  OnBordModel(
    title: "Math",
  ),
  OnBordModel(
    title: "Biology",
  ),
  OnBordModel(
    title: "All the above",
  ),
];
final priceCategory = [
  OnBordModel(
    title: "Below Rs.5000",
  ),
  OnBordModel(
    title: "Below Rs.10000",
  ),
  OnBordModel(
    title: "Below Rs.20000",
  ),
  OnBordModel(
    title: "All Price",
  ),
];
final menuCategory = [
  OnBordModel(title: "Teacher Search", image: "assets/icons/teacher1.png"),
  OnBordModel(title: "Video Courses", image: "assets/icons/video1.png"),
  OnBordModel(title: "Note", image: "assets/icons/note1.png"),
  OnBordModel(title: "School", image: "assets/icons/school1.png"),
  OnBordModel(title: "Bookmark", image: "assets/icons/bookmark.png"),
  OnBordModel(title: "Account", image: "assets/icons/profile1.png"),
  OnBordModel(title: "Notification", image: "assets/icons/bell.png"),
];
final profileCategory = [
  OnBordModel(title: "Purchase History", icon: CupertinoIcons.purchased_circle),
  OnBordModel(title: "Password", icon: CupertinoIcons.padlock),
  OnBordModel(title: "Notifications", icon: CupertinoIcons.bell),
  OnBordModel(title: "Inbox", icon: CupertinoIcons.chat_bubble),
  OnBordModel(title: "Support", icon: CupertinoIcons.person_2),
  OnBordModel(title: "About Us", icon: CupertinoIcons.exclamationmark_circle),
  OnBordModel(title: "Edit Profile", icon: CupertinoIcons.pencil_circle),
];
final papularSearch = <OnBordModel>[
  OnBordModel(image: "assets/images/photoshop.jpg", title: 'Photoshop'),
  OnBordModel(image: "assets/images/coding.jpg", title: "Coading"),
  OnBordModel(image: "assets/images/illu.jpg", title: "Illustration"),
  OnBordModel(image: "assets/images/draw.jpg", title: "Drawing"),
  OnBordModel(image: "assets/images/animation.jpg", title: "3D Animation"),
  OnBordModel(image: "assets/images/photo.jpg", title: "Photography"),
];
