import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';
import 'package:tailor_app/core/widgets/app_button.dart';
import 'package:tailor_app/core/widgets/custom_auth_text_row.dart';
import 'package:tailor_app/screens/01_auth_screen/login_screen/login_screen.dart';
import 'package:tailor_app/screens/01_auth_screen/sign_up/provider/sign_up_provider.dart';
import 'package:tailor_app/screens/01_auth_screen/sign_up/widget/sign_up_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                Text('Sign up !', style: LightColorTextStyles.schama.bodyLarge),
                SizedBox(height: 5),
                Text(
                  'Create account by filling the form below.',
                  style: LightColorTextStyles.schama.bodySmall,
                ),
                const SizedBox(height: 25),
                SignUpTextField(hintText: 'Enter name', fieldType: 'name'),
                const SizedBox(height: 13),
                SignUpTextField(hintText: 'Enter email', fieldType: 'email'),
                const SizedBox(height: 13),
                SignUpTextField(
                  hintText: 'Enter phone number',
                  fieldType: 'phone',
                ),
                const SizedBox(height: 13),
                SignUpTextField(hintText: 'Password', fieldType: 'password'),
                const SizedBox(height: 13),
                SignUpTextField(hintText: 'Enter pan number', fieldType: 'pan'),
                const SizedBox(height: 13),
                SignUpTextField(
                  hintText: 'Residential Address',
                  fieldType: 'address',
                ),
                const SizedBox(height: 45),
                Consumer<SignUpProvider>(
                  builder: (context, provider, child) {
                    return AppButton(
                      text: 'Create Account',
                      onPressed: () {
                        if (provider.validateForm()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Account created successfully!'),
                              backgroundColor: Colors.green,
                              duration: Duration(seconds: 3),
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
                const SizedBox(height: 15),
                CustomAuthTextRow(
                  normalText: 'Do you have already have account?',
                  actionText: 'Login',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
