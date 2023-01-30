import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class RegisterCaseFourController extends GetxController {
  changeRadioButton(String? value);
}

class RegisterCaseFourControllerIMP extends RegisterCaseFourController {
  TextEditingController painController = TextEditingController();
  String? val;

  @override
  changeRadioButton(value) {
    val = value;
    update();
  }
}
