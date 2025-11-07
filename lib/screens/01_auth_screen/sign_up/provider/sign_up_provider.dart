import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier {
  String name = '';
  String email = '';
  String phone = '';
  String password = '';
  String panNumber = '';
  String address = '';

  String? nameError;
  String? emailError;
  String? phoneError;
  String? passwordError;
  String? panError;
  String? addressError;

  // Update Methods
  void updateName(String value) {
    name = value;
    nameError = null;
    notifyListeners();
  }

  void updateEmail(String value) {
    email = value;
    emailError = null;
    notifyListeners();
  }

  void updatePhone(String value) {
    phone = value;
    phoneError = null;
    notifyListeners();
  }

  void updatePassword(String value) {
    password = value;
    passwordError = null;
    notifyListeners();
  }

  void updatePan(String value) {
    panNumber = value;
    panError = null;
    notifyListeners();
  }

  void updateAddress(String value) {
    address = value;
    addressError = null;
    notifyListeners();
  }

  bool validateForm() {
    nameError = emailError = phoneError = passwordError = panError =
        addressError = null;
    bool isValid = true;
    if (name.isEmpty) {
      nameError = 'Name is Required';
      isValid = false;
    }
    if (email.isEmpty || !email.contains('@')) {
      emailError = 'Enter a valid email address';
      isValid = false;
    }
    if (phone.isEmpty || phone.length < 11) {
      phoneError = 'Enter a valid Phone Number';
      isValid = false;
    }
    if (password.isEmpty || password.length < 6) {
      passwordError = 'Password must be atleast 6 characters';
      isValid = false;
    }
    if (panNumber.isEmpty) {
      panError = 'Enter pan number';
      isValid = false;
    }
    if (address.isEmpty) {
      addressError = 'Address Required';
      isValid = false;
    }
    notifyListeners();
    return isValid;
  }
}
