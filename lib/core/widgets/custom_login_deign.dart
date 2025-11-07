import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/app_images.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';

class CustomLoginDeign extends StatelessWidget {
  const CustomLoginDeign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Login Account', style: LightColorTextStyles.schama.bodyLarge),
            const SizedBox(width: 10),
            Image.asset(
              AppImages.user,
              height: 20,
              width: 20,
              fit: BoxFit.contain,
            ),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(AppImages.pak),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        SizedBox(height: 5),
        Text(
          'Hello, welcome back to our account !',
          style: LightColorTextStyles.schama.bodySmall,
        ),
        SizedBox(
          height: 210,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 80,
                child: Image.asset(
                  AppImages.machine,
                  height: 200,
                  width: 200,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 230,
                top: 100,
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
      ],
    );
  }
}
