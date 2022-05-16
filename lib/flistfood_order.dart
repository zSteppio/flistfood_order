library flistfood_order;

import 'package:flutter/material.dart';

/// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }

class FlistFoodOrder extends ChangeNotifier {
  String _message = 'Ciao!';

  String get message => _message;

  void setMessage(String message) {
    _message = message;

    notifyListeners();
  }
}
