// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class RegisterCaseSecond extends GetxController {
  changeDropMnue(String Val);
  goToThirdPage();
}

class RegisterCaseSecondIMP extends RegisterCaseSecond {
  String dropdownvalue = 'Left Leg';

  var items = [
    'Left Leg',
    'Right Leg',
    'Left Hand',
    'Right Hand',
    'Left Arm',
  ];

  @override
  changeDropMnue(String Val) {
    dropdownvalue = Val;
    update();
  }

  @override
  goToThirdPage() {
    Get.toNamed(AppRoute.registerCaseThird);
  }
}
