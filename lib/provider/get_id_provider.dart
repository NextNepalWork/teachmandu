import 'package:flutter/cupertino.dart';

class GETID with ChangeNotifier {
  int? _id = 0;
  int? get id => _id;
  setId({int? id}) {
    _id = id;
    notifyListeners();
  }
}
