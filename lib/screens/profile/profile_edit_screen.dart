import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';
import 'package:tailor_app/core/widgets/app_button.dart';
import 'package:tailor_app/core/widgets/app_text_field.dart';
import 'package:tailor_app/screens/profile/widget/profile_header.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.c1,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'Edit Profile',
          style: LightColorTextStyles.schama.bodyMedium,
        ),
        centerTitle: true,
        actions: [Icon(Icons.share_outlined)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHeader(),
            const SizedBox(height: 80),
            Center(
              child: Text(
                'Edit Profile',
                style: LightColorTextStyles.schama.bodyMedium!.copyWith(),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: const Text('Name'),
            ),
            const SizedBox(height: 5),
            const AppTextField(hintText: 'Ari_SGT'),
            const SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: const Text('Email'),
            ),
            const SizedBox(height: 5),
            const AppTextField(hintText: 'alishah12@gmail.com'),
            const SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: const Text('Phone'),
            ),
            const SizedBox(height: 5),
            const AppTextField(hintText: '+92 1245678903'),
            const SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: const Text('Password'),
            ),
            const SizedBox(height: 5),
            const AppTextField(hintText: '*******'),
            const SizedBox(height: 25),
            AppButton(
              text: 'Update',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Center(
                      child: Text(
                        'Profile updated successfully!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    backgroundColor: AppColors.c4,
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
