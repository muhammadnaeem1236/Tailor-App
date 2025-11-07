import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/provider/tab_provieder.dart';
import 'package:tailor_app/provider/navigation_provider.dart';
import 'package:tailor_app/screens/01_auth_screen/login_screen/login_provider.dart';
import 'package:tailor_app/screens/01_auth_screen/otp_screen/provider/otp_provider.dart';
import 'package:tailor_app/screens/01_auth_screen/otp_screen/provider/otp_timer_provider.dart';
import 'package:tailor_app/screens/01_auth_screen/sign_up/provider/sign_up_provider.dart';
import 'package:tailor_app/screens/main_navigation_screen.dart';
import 'package:tailor_app/screens/product_details/provider/counter_provider.dart';
import 'package:tailor_app/screens/tailor_profile/provider/button_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TabProvider()),
        ChangeNotifierProvider(create: (context) => OtpProvider()),
        ChangeNotifierProvider(
          create: (context) => TimerProvider()..startTimer(),
        ),
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => SignUpProvider()),
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => ButtonProvider()),
        ChangeNotifierProvider(create: (context) => NavigationProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tailor App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.c1),
      ),
      home: const MainNavigationScreen(),
    );
  }
}
