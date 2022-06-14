enum APIPath {
  login,
 
}

class APIPathHelper {
  static String getValue(APIPath path) {
    switch (path) {
      case APIPath.login:
        return "token";
     

      default:
        return "";
    }
  }
}
