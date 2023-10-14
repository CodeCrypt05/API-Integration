import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int count = 0;

  void incrementNumber() {
    count++;
    notifyListeners();
  }

  void decrementCount() {
    count--;
    notifyListeners();
  }
}
