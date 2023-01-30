import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class ResetPasswordController extends GetxController {
  successReset(BuildContext context);
  changeVisablePass();
  changeVisablePassConfirm();
}

class ResetPasswordControllerIMP extends ResetPasswordController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isPassword = true;
  bool isPasswordconfirm = true;
  bool success = true;

  @override
  successReset(BuildContext context) {
    if (success) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar(
            title: "SUCCESS",
            message: "Your password has been reset",
            contentType: ContentType.success));
      Get.toNamed(AppRoute.loginPage);
    } else {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar(
            title: "FAILURE",
            message: "Your password has not reset",
            contentType: ContentType.failure));
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
}
