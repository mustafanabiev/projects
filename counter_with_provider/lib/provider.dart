import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _san = 0;

  int get san => _san;

  void increment() {
    _san++;
    notifyListeners();
  }

  void decrement() {
    _san--;
    notifyListeners();
  }
}
