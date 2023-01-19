import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/pages/screen/auth/login_page.dart';
import 'pages/screen/splach_screen/splac_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lifeline",
      home: AnimatedSplashScreen(
        splash: const SplashScreen(),
        nextScreen: const LoginPgae(),
        splashIconSize: Get.height,
        animationDuration: const Duration(
          milliseconds: 2000,
        ),
        splashTransition: SplashTransition.sizeTransition,
      ),
    );
  }
}
