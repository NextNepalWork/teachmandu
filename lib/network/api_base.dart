import 'package:flutter/foundation.dart';

class APIBase {
  static String get baseUrl {
    if (kReleaseMode) {
      return 'http://ec2-65-0-118-1.ap-south-1.compute.amazonaws.com:8080/teachernepal/api/';
    } else {
      return "http://ec2-65-0-118-1.ap-south-1.compute.amazonaws.com:8080/teachernepal/api/";
    }
  }
}
