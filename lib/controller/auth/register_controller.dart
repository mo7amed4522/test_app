import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/server/server.dart';
import 'package:test_app/data/datasorcue/auth/signupdatasource.dart';

abstract class RegisterController extends GetxController {
  changeVisablePass();
  changeVisablePassConfirm();
  signUp();
  login();
}

class RegisterControllerIMP extends RegisterController {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  

  SignupData signupData = SignupData(Get.find());

  List data = [];
  StatusRequest? statusRequest;
  bool isPassword = true;
  bool isPasswordconfirm = true;
  MyServices myServices = Get.find();

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
  signUp() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await signupData.postData(
        nameController.text, emailController.text, passwordController.text);
    statusRequest = handlingData(response);
    update();
    if (StatusRequest.success == statusRequest) {
      Get.offAllNamed(AppRoute.loginPage);
    } else {
      Get.snackbar(
        "Error !!",
        "User with email ${emailController.text} exist!",
        snackPosition: SnackPosition.BOTTOM,
      );
      update();
    }
  }

  @override
  login() {
    Get.toNamed(AppRoute.loginPage);
  }

  @override
  void onInit() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
   
    super.dispose();
  }
}
