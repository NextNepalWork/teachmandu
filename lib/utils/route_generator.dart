import 'package:e_learning/screen/auth/login_screen.dart';
import 'package:e_learning/screen/auth/new_password.dart';
import 'package:e_learning/screen/auth/otp/otp_screen.dart';
import 'package:e_learning/screen/auth/reset_password.dart';
import 'package:e_learning/screen/auth/signup_screen.dart';
import 'package:e_learning/screen/bnb/home_v2.dart';
import 'package:e_learning/screen/bnb/search.dart';
import 'package:e_learning/screen/cart/cart_screen.dart';
import 'package:e_learning/screen/cart/checkout_screen.dart';
import 'package:e_learning/screen/course_details.dart';
import 'package:e_learning/screen/edit_profile.dart';
import 'package:e_learning/screen/home_screen.dart';
import 'package:e_learning/screen/onboard/onboard_screen.dart';
import 'package:e_learning/screen/select_teacher.dart';
import 'package:e_learning/screen/splash_screen.dart';
import 'package:e_learning/screen/teacher_profile.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const Homev2());
      case "/splash":
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case "/onboard":
        return MaterialPageRoute(builder: (_) => const OnBoard());
      case "/login":
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case "/register":
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case "/reset":
        return MaterialPageRoute(builder: (_) => const ResetPassword());
      case "/newPassword":
        return MaterialPageRoute(builder: (_) => const NewPassword());
      case "/otp":
        return MaterialPageRoute(builder: (_) => const OTPScreen());
      case "/edit":
        return MaterialPageRoute(builder: (_) => const EditProfile());
      case "/selectTeacher":
        return MaterialPageRoute(builder: (_) => const SelectTeacher());
      case "/teacherProfile":
        return MaterialPageRoute(builder: (_) => const TeacherProfile());
      case "/courseDetails":
        return MaterialPageRoute(builder: (_) => const CourseDetails());
      case "/search":
        return MaterialPageRoute(builder: (_) => const Search());
      case "/cart":
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case "/checkout":
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());
      default:
        return _errorPage();
    }
  }

  static Route<dynamic>? _errorPage() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text("Error"),
        ),
      ),
    );
  }
}
