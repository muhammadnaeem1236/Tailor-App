import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name, style: LightColorTextStyles.schama.bodyMedium),
      ),
    );
  }
}
