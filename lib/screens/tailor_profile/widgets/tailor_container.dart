import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';

class TailorContainer extends StatelessWidget {
  const TailorContainer({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 179, 238, 226),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: LightColorTextStyles.schama.bodyMedium),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(description),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
