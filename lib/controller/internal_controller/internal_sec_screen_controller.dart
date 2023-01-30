import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class InternalSecondScreenController extends GetxController {
  changeRadioButton(String? value);
  goToChoiceScreen();
}

class InternalSecondScreenControllerIMP extends InternalSecondScreenController {
  TextEditingController painController = TextEditingController();
  String? val;

  @override
  changeRadioButton(value) {
    val = value;
    update();
  }

  @override
  goToChoiceScreen() {
    Get.toNamed(AppRoute.registerCase,preventDuplicates: false);
  }
}
