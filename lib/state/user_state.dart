import 'package:flutter/material.dart';
import 'package:timehut_mobile/models/responses/login_response.dart';

class UserState extends ChangeNotifier {
  String? _name;
  int? _id;
  String? _email;
  String? _token;

  void setUserState(LoginResponse loginResponse) {
    _name = loginResponse.data.name;
    _email = loginResponse.data.email;
    _id = loginResponse.data.id;
    _token = loginResponse.token;
  }

  void clearUserState() {
    _name = null;
    _id = null;
    _email = null;
    _token = null;
  }

  String? get name => _name;
}
