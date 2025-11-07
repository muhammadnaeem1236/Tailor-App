import 'package:flutter/widgets.dart';

class LoginProvider with ChangeNotifier {
  String _email = '';
  String _password = '';
  String _phone = '';

  String get email => _email;
  String get password => _password;
  String get phone => _phone;

  void setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    _password = value;
    notifyListeners();
  }

  void setPhone(String value) {
    _phone = value;
    notifyListeners();
  }
}
