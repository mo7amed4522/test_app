import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/server/server.dart';
import 'package:test_app/data/datasorcue/forget_password/checkemail_forget.dart';

abstract class ForgetPassword extends GetxController {
  submit();
}

class ForgetPasswordIMP extends ForgetPassword {
  CheckEmailForgetPassword checkEmailForgetPassword =
      CheckEmailForgetPassword(Get.find());
  late TextEditingController email;
  MyServices myServices = Get.find();
  List data = [];
  StatusRequest? statusRequest;

  @override
  submit() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await checkEmailForgetPassword.postData(email.text);
    print(response);
    statusRequest = handlingData(response);
    update();
    print(statusRequest);
    if (statusRequest == StatusRequest.success) {
      if (response['Status'] == 0) {
        Get.snackbar(
          "link has sent",
          "please check your email to confirm reset password",
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.toNamed(AppRoute.loginPage);
      } else {
        Get.snackbar(
          "error !!",
          "Error happen when send your email",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
