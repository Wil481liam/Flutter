import 'package:flutter/material.dart';

class bdLocal with ChangeNotifier {
  int _selectedIndex = 0;
  int get index => _selectedIndex;
  void setIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
