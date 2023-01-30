import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/theme/theme_color.dart';

abstract class RegisterCaseFirst extends GetxController {
  changeSelected();
  goToSecRegisterCasePage(int? x);
}

class RegisterCaseFirstIMP extends RegisterCaseFirst {
  bool isSelected = false;
  Color color = AppColor.grey;
  Color colorText = AppColor.back;
  Color color2 = AppColor.grey;
  int? x;
  Color colorText2 = AppColor.back;

  @override
  changeSelected() {
    isSelected = !isSelected;
    if (isSelected == true) {
      color = AppColor.defaultColor;
      colorText = AppColor.defaultColor;
      color2 = AppColor.grey;
      colorText2 = AppColor.back;
      x = 1;
      if (kDebugMode) {
        print(x);
      }
    } else {
      color = AppColor.grey;
      colorText = AppColor.back;
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
      Get.toNamed(AppRoute.registerCaseSec);
    } else {
      Get.toNamed(AppRoute.registerCaseThird);
    }
  }
}
