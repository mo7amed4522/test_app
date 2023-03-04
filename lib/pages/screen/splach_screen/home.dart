// ignore_for_file: unused_import

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/server/server.dart';
import 'package:test_app/core/shared_preference/cache_helper.dart';
import 'package:test_app/pages/screen/auth/register_page.dart';
import 'package:test_app/pages/screen/home/home_page.dart';
import 'package:test_app/pages/screen/qestion_screen/questation_freetext_screen.dart';
import 'package:test_app/pages/screen/splach_screen/splac_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const SplashScreen(),
      nextScreen: newScreen(),
      splashIconSize: Get.height,
      animationDuration: const Duration(
        milliseconds: 2000,
      ),
      splashTransition: SplashTransition.sizeTransition,
    );
  }
}

Widget newScreen(){
    token = CacheHelper.get(key: "token");
  if(token != null){
    return  HomePageScreen();
  }else{
    return const RegisterScreen();
  }
}