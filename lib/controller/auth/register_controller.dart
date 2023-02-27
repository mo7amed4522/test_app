import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/server/server.dart';
import 'package:test_app/data/datasorcue/auth/signupdatasource.dart';

abstract class RegisterController extends GetxController {
  changeVisablePass();
  changeVisablePassConfirm();
  signUp();
  login();
}

class RegisterControllerIMP extends RegisterController {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confPasswordController;

  SignupData signupData = SignupData(Get.find());

  List data = [];
  StatusRequest? statusRequest;
  GlobalKey<FormState> formState = GlobalKey();
  bool isPassword = true;
  bool isPasswordconfirm = true;
  MyServices myServices = Get.find();

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
  signUp() async{
      var formData = formState.currentState;
    if(formData!.validate()){
       statusRequest = StatusRequest.loading;
       update();
    var response = await signupData.postData(nameController.text,emailController.text,passwordController.text);
    statusRequest = handlingData(response);
    update();
    if(StatusRequest.success == statusRequest){
      Get.offAllNamed(AppRoute.loginPage);
    }
    update();
    }else{
      Get.snackbar('Error Register', "you have an error in your email address or phone or password",snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  login() {
    Get.back();
  }

    @override
  void onInit() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confPasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confPasswordController.dispose();
    super.dispose();
  }
}
