import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier {
  int _count = 20; // Changed the variable name to _count to avoid conflict with the getter method

  int get count => _count;

  void setCount() {
    _count++; // Corrected the increment operation
    notifyListeners();
  }
}