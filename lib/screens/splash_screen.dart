import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/core/constants/app_images.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';
import 'package:tailor_app/screens/01_auth_screen/sign_up/sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignUpScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c1,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            height: 800,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 430,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      AppColors.c1.withAlpha((255 * 0.9).toInt()),
                      BlendMode.lighten,
                    ),
                    child: Image.asset(
                      AppImages.machine,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 280,
                  left: 0,
                  right: 90,
                  child: Image.asset(
                    AppImages.machine,
                    height: 200,
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 230,
                  top: 380,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CallMe",
                        style: LightColorTextStyles.schama.displayMedium,
                      ),
                      Text(
                        "TAILOR",
                        style: LightColorTextStyles.schama.displayLarge,
                      ),
                    ],
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
