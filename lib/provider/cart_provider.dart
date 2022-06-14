import 'package:e_learning/model/onboard_model.dart';
import 'package:flutter/cupertino.dart';

class CartProvider with ChangeNotifier {
  final List<OnBordModel> cart = [];
  double get totalAmount {
    return cart.fold(
        0.0,
        (double previousAmount, OnBordModel currentAmount) =>
            previousAmount + currentAmount.price!);
  }

  void addToCart({OnBordModel? model}) {
    cart.add(model!);
    notifyListeners();
  }

  void removeFromCart({OnBordModel? model}) {
    cart.remove(model!);
    notifyListeners();
  }
}
