import 'package:flutter/material.dart';

class ErrorProvider extends ChangeNotifier {
  bool? isEligible;
  String? eligibilityMessage = "";

  void checkEligiblility(int age) {
    if (age > 18) {
      isEligible = true;
      eligibilityMessage = "You are eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligibilityMessage = "You are not eligible";
      notifyListeners();
    }
  }
}
