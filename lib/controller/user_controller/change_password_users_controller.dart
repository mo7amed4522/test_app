// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/data/datasorcue/profile/change_password.dart';
import 'package:test_app/pages/widget/auth_widget/dialog_widget.dart';

abstract class ChangeUsersPasswordController extends GetxController {
  sucessReset(BuildContext context);
}

class ChangeUsersPasswordControllerIMP extends ChangeUsersPasswordController {
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confNewPasswordController = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();
  StatusRequest? statusRequest;
  ChangePasswordData changePasswordData = ChangePasswordData(Get.find());

 

  @override
  sucessReset(BuildContext context) async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await changePasswordData.postData(
        currentPasswordController.text,
        newPasswordController.text,
      );
      statusRequest = handlingData(response);
      update();
      if (statusRequest == StatusRequest.success) {
        if (response['Status'] == 0) {
          showDialog(
            context: context,
            builder: (context) => DialogWidget(
              onTap: () {
                Get.offAndToNamed(AppRoute.homePage);
              },
            ),
          );
        } else {
          Get.snackbar("Error", response['Error'],
              snackPosition: SnackPosition.BOTTOM);
        }
      }
    }
  }
}
