import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/core/constants/app_images.dart';
import 'package:tailor_app/core/widgets/screen_title.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.c1),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(top: 10, child: const ScreenTitle(name: 'Profile')),
          Positioned(
            bottom: -70,
            left: 130,
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(AppImages.pro),
            ),
          ),
        ],
      ),
    );
  }
}
