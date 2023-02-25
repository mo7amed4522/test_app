import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/server/server.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/data/datasorcue/auth/login_screen_datasorcue.dart';

abstract class LoginController extends GetxController {
  changeVisablePass();
  goToForgetPassword();
  login();
  goToSignUpPage();
}

class LoginControllerIMP extends LoginController {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  GlobalKey<FormState> formState = GlobalKey();
  bool isPassword = true;
  List data = [];
  StatusRequest? statusRequest;
  MyServices myServices = Get.find();
  SigninData signinData = SigninData(Get.find());

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
  login() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signinData.postData(
          emailController.text, passwordController.text);
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        myServices.sharedPreferences.setString("token", response['Token']);
        token = response['Token'];
        if (kDebugMode) {
          print(response['Token']);
        }
        Get.offNamed(AppRoute.homePage);
      }
      update();
    } else {
      Get.snackbar(
        'Error Login',
        "you have an error while Login to your account !",
        snackPosition: SnackPosition.BOTTOM,
        colorText: AppColor.grey,
      );
      statusRequest = StatusRequest.failure;
    }
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  goToSignUpPage() {
    Get.toNamed(AppRoute.registerPage);
  }
}
