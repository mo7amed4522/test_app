import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/server/server.dart';
import 'package:test_app/data/datasorcue/profile/edit_profile.dart';

abstract class ProfileEditScreenController extends GetxController {
  changeEnable();
  save();
}

class ProfileEditScreenControllerIMP extends ProfileEditScreenController {
  StatusRequest? statusRequest;
  MyServices myServices = Get.find();
  EditData editData = EditData(Get.find());
  String button = "Save";
  bool enable = false;

  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  changeEnable() {
    enable = !enable;
    if (enable == false) {
      button = "Save";
    } else {
      button = "Update";
    }
    update();
  }

  @override
  save() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await editData.postData(
      namecontroller.text,
      emailController.text,
    );
    statusRequest = handlingData(response);
    update();
    if (statusRequest == StatusRequest.success) {
      enable = false;
      button = "Save";
      Get.toNamed(AppRoute.homePage,
      arguments: {
        "newName" : namecontroller.text,
        "newEmail":emailController.text,
       }
      );
    } else {
      Get.snackbar(
        "Error",
        "faild to Save e_mail or pass",
        snackPosition: SnackPosition.BOTTOM,
      );
      Get.back();
    }
  }

  @override
  void onInit() {
    super.onInit();
    namecontroller.text = Get.arguments['Name'];
    emailController.text = Get.arguments['Email'];
  }
}
