import 'package:flutter/material.dart';
import 'package:timehut_mobile/models/responses/login_response.dart';
import 'package:timehut_mobile/models/user.dart';

class UserProvider extends ChangeNotifier {
  String? _token;
  User? _user;

  User? get user => _user;
  String? get token => _token;

  void setUserState(LoginResponse loginResponse) {
    _user = loginResponse.data;
    _token = loginResponse.token;
    notifyListeners();
  }

  void clearUserState() {
    _user = null;
    _token = null;
    notifyListeners();
  }

}
