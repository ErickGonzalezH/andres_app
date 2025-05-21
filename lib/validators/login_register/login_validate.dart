import 'package:flutter/material.dart';

class ValidateLogin extends ChangeNotifier {
  GlobalKey<FormState> keyLogin = GlobalKey<FormState>();

  String email = '';
  String password = '';

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool isValidForm() {
    return keyLogin.currentState?.validate() ?? false;
  }
}