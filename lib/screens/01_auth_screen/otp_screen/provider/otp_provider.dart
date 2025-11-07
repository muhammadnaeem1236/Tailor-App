import 'package:flutter/material.dart';

class OtpProvider with ChangeNotifier {
  final int otpLength;

  OtpProvider({this.otpLength = 4});
}
