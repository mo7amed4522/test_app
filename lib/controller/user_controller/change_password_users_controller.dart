import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/pages/widget/auth_widget/dialog_widget.dart';

abstract class ChangeUsersPasswordController extends GetxController{
  successReset(BuildContext context);
}
class ChangeUsersPasswordControllerIMP extends ChangeUsersPasswordController{
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confNewPasswordController = TextEditingController();
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
}