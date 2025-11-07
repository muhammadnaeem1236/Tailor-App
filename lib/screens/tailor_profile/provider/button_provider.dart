import 'package:flutter/material.dart';

class ButtonProvider extends ChangeNotifier {
  int _selectedIndex = 2;
  int get selectedIndex => _selectedIndex;
  void selectedButton(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
