import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class ResetPasswordController extends GetxController {
  successReset();
  changeVisablePass();
  changeVisablePassConfirm();
  snackBarSeccess();
  snackBarFailer();
}

class ResetPasswordControllerIMP extends ResetPasswordController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isPassword = true;
  bool isPasswordconfirm = true;
  int success = 1;

  @override
  successReset() {
    if (success == 1) {
      snackBarSeccess();
      Get.toNamed(AppRoute.loginPage);
    } else {
      snackBarSeccess();
    }
  }

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
  snackBarSeccess() {
    snackBar(
        title: "SUCCESS",
        message: "Your password has been reset",
        contentType: ContentType.success);
  }

  @override
  snackBarFailer() {
    snackBar(
        title: "FAILURE",
        message: "Your password has not reset",
        contentType: ContentType.failure);
  }
}
