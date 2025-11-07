import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';

class CustomAuthTextRow extends StatelessWidget {
  final String normalText;
  final String actionText;
  final VoidCallback onTap;

  const CustomAuthTextRow({
    super.key,
    required this.normalText,
    required this.actionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$normalText ', style: LightColorTextStyles.schama.bodySmall),
        SizedBox(width: 3),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionText,
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w800,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
