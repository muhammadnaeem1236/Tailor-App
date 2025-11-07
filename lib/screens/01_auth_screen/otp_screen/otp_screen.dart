import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/core/constants/app_images.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';
import 'package:tailor_app/core/widgets/app_button.dart';
import 'package:tailor_app/screens/01_auth_screen/otp_screen/provider/otp_timer_provider.dart';
import 'package:tailor_app/screens/01_auth_screen/otp_screen/widget/otp_input_field.dart';
import 'package:tailor_app/screens/forgot_password/forgot_password_screen.dart';

class OtpScreen extends StatelessWidget {
  final String otpNumber;
  const OtpScreen({super.key, required this.otpNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c1,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              color: AppColors.c1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(900, 100),
                  bottomRight: Radius.elliptical(300, 200),
                ),
                child: Center(
                  child: Image.asset(
                    AppImages.vec,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'OTP VERIFICATION',
              style: LightColorTextStyles.schama.bodyMedium,
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter the OTP sent to - +92-$otpNumber',
                  style: LightColorTextStyles.schama.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const OtpInputField(),
                const SizedBox(width: 5),
                const OtpInputField(),
                const SizedBox(width: 5),
                const OtpInputField(),
                const SizedBox(width: 5),
                const OtpInputField(),
              ],
            ),
            const SizedBox(height: 15),
            Consumer<TimerProvider>(
              builder: (context, timer, child) {
                final formattedTime = timer.seconds.toString().padLeft(2, '0');
                return Text(
                  '00:$formattedTime Sec',
                  style: LightColorTextStyles.schama.bodySmall,
                );
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont't receive code?",
                  style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.c2,
                  ),
                ),
                Text(
                  "Re-send?",
                  style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.c2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            AppButton(
              text: 'Submit',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPasswordScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
