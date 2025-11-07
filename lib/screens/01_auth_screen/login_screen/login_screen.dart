import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/core/widgets/app_button.dart';
import 'package:tailor_app/core/widgets/app_text_field.dart';
import 'package:tailor_app/core/widgets/custom_auth_text_row.dart';
import 'package:tailor_app/core/widgets/custom_login_deign.dart';
import 'package:tailor_app/core/widgets/custome_tab_bar.dart';
import 'package:tailor_app/core/widgets/or_divider.dart';
import 'package:tailor_app/provider/tab_provieder.dart';
import 'package:tailor_app/screens/01_auth_screen/login_screen/login_provider.dart';
import 'package:tailor_app/screens/01_auth_screen/otp_screen/otp_screen.dart';
import 'package:tailor_app/screens/01_auth_screen/sign_up/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const CustomLoginDeign(),
                Consumer<TabProvider>(
                  builder: (context, value, child) {
                    return Row(
                      children: [
                        CustomeTabBar(
                          text: 'Email',
                          isActive: value.selectedIndex == 0,
                          onTap: () => value.selectTab(0),
                        ),
                        CustomeTabBar(
                          text: 'Phone Number',
                          isActive: value.selectedIndex == 1,
                          onTap: () => value.selectTab(1),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 25),
                Consumer2<TabProvider, LoginProvider>(
                  builder: (context, tab, login, child) {
                    if (tab.selectedIndex == 0) {
                      return Column(
                        children: [
                          AppTextField(hintText: 'Email address'),
                          const SizedBox(height: 13),
                          AppTextField(hintText: 'Password'),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text('Forgot Password?'),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Column(
                        children: [
                          AppTextField(
                            hintText: 'Phone Number',
                            onChanged: (value) => login.setPhone(value),
                          ),
                          const SizedBox(height: 13),
                        ],
                      );
                    }
                  },
                ),
                const SizedBox(height: 15),
                Consumer2<TabProvider, LoginProvider>(
                  builder: (context, tab, login, child) {
                    return AppButton(
                      text: tab.selectedIndex == 0 ? 'Login' : 'Send OTP',
                      onPressed: () {
                        if (tab.selectedIndex == 0) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        } else {
                          if (login.phone.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Enter a phone number'),
                              ),
                            );
                            return;
                          }
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  OtpScreen(otpNumber: login.phone),
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
                const SizedBox(height: 25),
                const OrDivider(),
                const SizedBox(height: 25),
                Consumer<LoginProvider>(
                  builder: (context, login, child) {
                    return CustomAuthTextRow(
                      normalText: 'Not register yet?',
                      actionText: 'Create Account',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                OtpScreen(otpNumber: login.phone),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
