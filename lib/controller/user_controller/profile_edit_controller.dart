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
  GlobalKey<FormState> formState = GlobalKey();

   TextEditingController  namecontroller = TextEditingController();
   TextEditingController  emailController = TextEditingController();

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
      var formData = formState.currentState;
      if (formData!.validate()) {
        statusRequest = StatusRequest.loading;
        update();
        var response = await editData.postData(
          namecontroller.text,
          emailController.text,
        );
        statusRequest = handlingData(response);
        if (statusRequest == StatusRequest.success) {
          enable = false;
          button = "Save";
          Get.offAndToNamed(AppRoute.homePage);
        } else {
          Get.snackbar(
            "Error",
            "faild to Save e_mail or pass",
            snackPosition: SnackPosition.BOTTOM,
          );
        }
      } else {
        Get.snackbar("Error", "close Edit and back !!",
            snackPosition: SnackPosition.BOTTOM);
      }
    
  }

  @override
  void onInit() {
    super.onInit();
    namecontroller.text = Get.arguments['Name'];
    emailController.text = Get.arguments['Email'];
  }
}
