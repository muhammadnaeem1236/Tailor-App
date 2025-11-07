import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/screens/01_auth_screen/otp_screen/provider/otp_provider.dart';

class OtpInputField extends StatelessWidget {
  final int length;
  const OtpInputField({super.key, this.length = 4});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Consumer<OtpProvider>(
        builder: (context, value, child) {
          return TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              counterText: '',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.c2),
              ),
            ),
          );
        },
      ),
    );
  }
}
