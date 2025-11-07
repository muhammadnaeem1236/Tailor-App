import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/screens/profile/profile_edit_screen.dart';
import 'package:tailor_app/screens/profile/widget/profile_container.dart';
import 'package:tailor_app/screens/profile/widget/profile_header.dart';
import 'package:tailor_app/screens/profile/widget/profile_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHeader(),
            const SizedBox(height: 80),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.c5,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileEditScreen(),
                    ),
                  );
                },
                child: Text('Edit Profile'),
              ),
            ),
            const SizedBox(height: 15),
            const ProfileContainer(name: 'Akun'),
            const SizedBox(height: 15),
            const ProfileRow(icon: Icons.account_circle_outlined, name: 'Akun'),
            const SizedBox(height: 15),
            const ProfileRow(icon: Icons.lock_clock_outlined, name: 'Privacy'),
            const SizedBox(height: 15),
            const ProfileRow(icon: Icons.store_outlined, name: 'My Shop'),
            const SizedBox(height: 15),
            const ProfileContainer(name: 'Tampilan'),
            const SizedBox(height: 15),
            const ProfileRow(icon: Icons.public, name: 'Bahasa'),
            const SizedBox(height: 15),
            const ProfileRow(icon: Icons.accessibility, name: 'Accessibility'),
            const SizedBox(height: 15),
            const ProfileContainer(name: 'Dukungan'),
            const SizedBox(height: 15),
            const ProfileRow(icon: Icons.flag, name: 'Laporkan masalah'),
            const SizedBox(height: 15),
            const ProfileRow(
              icon: Icons.error_outline,
              name: 'Laporkan masalah',
            ),
          ],
        ),
      ),
    );
  }
}
