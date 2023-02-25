// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/data/datasorcue/question/question_datasource.dart';

abstract class YesNoQuestionScreenController extends GetxController {
  getData();
  changeRadioButton(String? value);
}

class YesNoQuestionScreenControllerIMP extends YesNoQuestionScreenController {
  StatusRequest? statusRequest;
  QuestioinData questioinData = QuestioinData(Get.find());
  TextEditingController IdController = TextEditingController();
  TextEditingController answerController = TextEditingController();
  int i = 0;
  List data = [];
  List ques = [];
  List<String> rsult = [];

  @override
  getData() async {
    IdController.text = Get.arguments['ID'];
    statusRequest = StatusRequest.loading;
    update();
    var response = await questioinData.gettData(IdController.text);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      data.addAll(response['BodyPartQuestions']);
      if (data.isNotEmpty) {
        for (i; i < data.length; i++) {
          if (data[i]['QuestionType'] == "YesNo") {
            ques.add(data[i]);
            update();
          }
          update();
        }
      } else {
        Get.snackbar(
          "No Qestions",
          "There are no questions for this part. Please go to the next page",
          snackPosition: SnackPosition.BOTTOM,
        );
        Timer(const Duration(seconds: 3), () {
          Get.toNamed(AppRoute.historyPage);
        });
      }
    }
  }


  String? val;

  @override
  changeRadioButton(String? value) {
    val = value;
    update();
  }
}
