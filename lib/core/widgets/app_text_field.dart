import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  const AppTextField({super.key, required this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 340,
        child: TextFormField(
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: LightColorTextStyles.schama.bodySmall,
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
