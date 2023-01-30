import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class LoginController extends GetxController {
  changeVisablePass();
  goToForgetPassword();
  login();
  goToSignUpPage();
}

class LoginControllerIMP extends LoginController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;
  @override
  changeVisablePass() {
    isPassword = !isPassword;
    update();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forggetPass);
  }

  @override
  login() {
    Get.toNamed(AppRoute.homePage);
  }

  @override
  goToSignUpPage() {
    Get.toNamed(AppRoute.registerPage);
  }
}
