import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/app_colors.dart';

class TailorButton extends StatelessWidget {
  const TailorButton({
    super.key,
    required this.name,
    required this.isSelected,
    required this.onTap,
  });
  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 90,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.c3 : Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          name,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
