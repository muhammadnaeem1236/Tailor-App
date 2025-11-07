import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/app_colors.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.arrow_back, color: AppColors.c6),
        Center(
          child: Text(name, style: TextStyle(color: AppColors.c6)),
        ),
      ],
    );
  }
}
