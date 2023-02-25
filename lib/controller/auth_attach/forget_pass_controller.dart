import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/data/datasorcue/forget_password/checkemail_forget.dart';

abstract class ForgetPassword extends GetxController {
  submit();
}

class ForgetPasswordIMP extends ForgetPassword {
  CheckEmailForgetPassword checkEmailForgetPassword =
      CheckEmailForgetPassword(Get.find());
  GlobalKey<FormState> formState = GlobalKey();
  late TextEditingController email;
  List data = [];
  StatusRequest? statusRequest;
  

  @override
  submit() async{
    Get.toNamed(AppRoute.linkSent);
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
