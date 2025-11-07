import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _initial = 0;
  int get initial => _initial;
  void increment() {
    _initial += 1;
    print("the button is pressed");
    notifyListeners();
  }

  void decrement() {
    if (initial > 0) {
      _initial--;
      notifyListeners();
    }
  }
}
