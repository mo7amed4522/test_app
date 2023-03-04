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
  late TextEditingController currentPasswordController;
  late TextEditingController newPasswordController;
  
  StatusRequest? statusRequest;
  ChangePasswordData changePasswordData = ChangePasswordData(Get.find());

  @override
  sucessReset(BuildContext context) async {
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
              currentPasswordController.clear();
              newPasswordController.clear();
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

  @override
  void onInit() {
    currentPasswordController = TextEditingController();
    newPasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    currentPasswordController.dispose();
    newPasswordController.dispose();
    super.dispose();
  }
}
