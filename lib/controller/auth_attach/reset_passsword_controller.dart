import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/pages/widget/auth_widget/dialog_widget.dart';

abstract class ResetPasswordController extends GetxController {
  successReset(BuildContext context);
  changeVisablePass();
  changeVisablePassConfirm();
}

class ResetPasswordControllerIMP extends ResetPasswordController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isPassword = true;
  bool isPasswordconfirm = true;
  bool success = true;

  @override
  successReset(BuildContext context) {
    if (success) {
      showDialog(context: context, builder: (context)=>DialogWidget(
        onTap: (){
          Get.toNamed(AppRoute.loginPage);
        },
      )
      );

    } else {

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
