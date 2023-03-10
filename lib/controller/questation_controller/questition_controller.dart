// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/data/datasorcue/question/question_datasource.dart';

abstract class QuestitionScreenController extends GetxController {
  getData();
  changeRadioButton(String? value,int index);
  postData({
    String? bodyPartId,
    required List<Map<dynamic, String>> map,
    double? longitude,
    double? latitude,
  });
}

class QuestitionScreenControllerIMP extends QuestitionScreenController {
  StatusRequest? statusRequest;
  QuestioinData questioinData = QuestioinData(Get.find());
  TextEditingController IdController = TextEditingController();

  int i = 0;
  List data = [];
  List<String> result = [];
  List quesfreeText = [];
  List quesYesNo = [];
  List<TextEditingController> controllers = [];
  List<int> questID = [];

  @override
  getData() async {
    IdController.text = Get.arguments['Id'];
    statusRequest = StatusRequest.loading;
    update();
    var response = await questioinData.gettData(IdController.text);
    statusRequest = handlingData(response);
    update();
    if (statusRequest == StatusRequest.success) {
      data.addAll(response['BodyPartQuestions']);
      if (data.isNotEmpty) {
        for (i; i < data.length; i++) {
          questID.add(data[i]['Id']);
          update();
          if (data[i]['QuestionType'] == "FreeText") {
            quesfreeText.add(data[i]);
            update();
          } else {
            quesYesNo.add(data[i]);
            update();
          }
        }
      } else {
        Get.snackbar(
          "No Qestions",
          "There are no questions for this part. Please go to the next page",
          snackPosition: SnackPosition.BOTTOM,
        );
        Timer(const Duration(seconds: 3), () {
          Get.offNamed(AppRoute.homePage);
        });
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
    IdController.text = Get.arguments['Id'];
    getData();
  }


  @override
  changeRadioButton(String? value,int index) {
    controllers[index].text = value!;
    update();
  }

  @override
  postData({
    String? bodyPartId,
    required List<Map<dynamic, String>> map,
    double? longitude,
    double? latitude,
  }) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await questioinData.postData(
        bodyPartId: bodyPartId,
        map: map,
        longitude: longitude,
        latitude: latitude);
    statusRequest = handlingData(response);
    update();
    if (statusRequest == StatusRequest.success) {
      Get.toNamed(AppRoute.nearbyHospital);
    }
    update();
  }
}
