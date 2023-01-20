import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/pages/screen/auth/register_page.dart';
import 'package:test_app/pages/screen/splach_screen/splac_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const SplashScreen(),
      nextScreen: const RegisterPage(),
      splashIconSize: Get.height,
      animationDuration: const Duration(
        milliseconds: 2000,
      ),
      splashTransition: SplashTransition.sizeTransition,
    );
  }
}
