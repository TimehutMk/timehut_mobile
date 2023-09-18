import 'package:flutter/material.dart';

class ShiftProvider extends ChangeNotifier {
  DateTime? _startAt;

  DateTime? get startAt => _startAt;

  void setStartAt(DateTime s) {
    _startAt = s;
    notifyListeners();
  }

  void clearShiftState() {
    _startAt = null;
    notifyListeners();
  }
}
