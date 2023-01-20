import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class RegisterController extends GetxController {
  changeVisablePass();
  changeVisablePassConfirm();
  signUp();
  login();
}

class RegisterControllerIMP extends RegisterController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confPasswordController = TextEditingController();
  bool isPassword = true;
  bool isPasswordconfirm = true;

  @override
  changeVisablePass() {
    isPassword = !isPassword;
    update();
  }

  @override
  changeVisablePassConfirm() {
    isPasswordconfirm = !isPasswordconfirm;
    update();
  }

  @override
  signUp() {}

  @override
  login() {
    Get.toNamed(AppRoute.loginPage);
  }
}
