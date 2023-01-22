import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class ForgetPassword extends GetxController {
  submit();
}

class ForgetPasswordIMP extends ForgetPassword {
  TextEditingController emailController = TextEditingController();

  @override
  submit() {
    Get.toNamed(AppRoute.linkSent);
  }
}
