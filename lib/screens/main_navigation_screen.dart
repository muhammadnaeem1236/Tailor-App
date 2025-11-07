import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/core/constants/app_images.dart';
import 'package:tailor_app/screens/home/home_screen.dart';
import 'package:tailor_app/screens/product_details/product_detail.dart';
import 'package:tailor_app/screens/profile/profile_screen.dart';
import '../provider/navigation_provider.dart';

class MainNavigationScreen extends StatelessWidget {
  const MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = context.watch<NavigationProvider>();

    final List<Widget> screens = [
      const HomeScreen(),
      const ProductDetail(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: screens[navigationProvider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationProvider.currentIndex,
        onTap: (index) => context.read<NavigationProvider>().setIndex(index),
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 40,
              width: 50,
              child: Image.asset(
                AppImages.home,
                color: navigationProvider.currentIndex == 0
                    ? Colors.teal
                    : Colors.black,
                fit: BoxFit.cover,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 40,
              width: 50,
              child: Image.asset(
                AppImages.mac,
                color: navigationProvider.currentIndex == 1
                    ? Colors.teal
                    : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 40,
              width: 50,
              child: Image.asset(
                AppImages.prof,
                color: navigationProvider.currentIndex == 2
                    ? Colors.teal
                    : Colors.grey,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
