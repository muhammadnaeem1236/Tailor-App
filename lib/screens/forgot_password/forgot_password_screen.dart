import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/core/constants/app_images.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';
import 'package:tailor_app/core/widgets/app_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.asset(AppImages.pass, fit: BoxFit.contain),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Text(
                  'Forgot',
                  style: LightColorTextStyles.schama.bodyLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Text(
                  'Password?',
                  style: LightColorTextStyles.schama.bodyLarge,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Text(
                  "Don't worry it happens. Please inter the phone \nnumber we will send OTP to this number ",
                  style: LightColorTextStyles.schama.bodySmall,
                ),
              ),
              const SizedBox(height: 25),
              // const SignUpTextField(hintText: 'Enter the phone number'),
              const SizedBox(height: 50),
              AppButton(text: 'Continue', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
