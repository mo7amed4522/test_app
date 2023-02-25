import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/theme/theme_color.dart';

abstract class RegisterCaseFirst extends GetxController {
  changeSelected();
  changeInternal();
  changeInteractive();
  goToSecRegisterCasePage(int? x);
}

class RegisterCaseFirstIMP extends RegisterCaseFirst {
  bool isSelected = false;
  Color color = AppColor.back;
  Color colorText = AppColor.black;
  Color color2 = AppColor.back;
  int? x;
  Color colorText2 = AppColor.black;

  @override
  changeSelected() {
    if (isSelected == false) {
      color = AppColor.defaultColor;
      colorText = AppColor.defaultColor;
      color2 = AppColor.back;
      colorText2 = AppColor.black;
      x = 1;
      if (kDebugMode) {
        print(x);
      }
    } else {
      color = AppColor.back;
      colorText = AppColor.black;
      color2 = AppColor.defaultColor;
      colorText2 = AppColor.defaultColor;
      x = 2;
      if (kDebugMode) {
        print(x);
      }
    }
    update();
  }


  @override
  goToSecRegisterCasePage(x) {
    if (x == 1) {
      Get.offAndToNamed(AppRoute.interactiveScreen);
    } else {
      Get.offAndToNamed(AppRoute.internalCase);
    }
  }

  @override
  changeInteractive() {
    isSelected =false;
    changeSelected();
    update();
  }

  @override
  changeInternal() {
    isSelected = true;
    changeSelected();
    update();
  }
}
