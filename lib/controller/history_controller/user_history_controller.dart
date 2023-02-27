// ignore_for_file: avoid_print

import 'dart:async';

import 'package:get/get.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/server/server.dart';
import 'package:test_app/data/datasorcue/home/userHistory/user_case.dart';

abstract class FirstUserHistoryScreenController extends GetxController {
  getData();
}

class FirstUserHistoryScreenControllerIMP
    extends FirstUserHistoryScreenController {
  List items = [];
  String? id;
  String? hosptailName;
  String? dataTime;
  String? timeDate;
  UserHistoryCase userHistoryCase = UserHistoryCase(Get.find());
  Crud curd = Crud();
  StatusRequest? statusRequest;
  MyServices myServices = Get.find();

  @override
  getData() async {
    id = Get.arguments['IDCase'];
    items.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await userHistoryCase.getData(id!);
    statusRequest = handlingData(response);
    update();
    if (statusRequest == StatusRequest.success) {
      if (response['Status'] == 0) {
        items.addAll(response['Answers']);
        update();
      } else {
        Get.snackbar(
          "No Data",
          "There was no Case could be found",
          snackPosition: SnackPosition.BOTTOM,
        );
        Timer(const Duration(seconds: 3), () {
          Get.toNamed(AppRoute.homePage);
        });
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
    id = Get.arguments['IDCase'];
    hosptailName = Get.arguments['hosptailName'];
    dataTime = Get.arguments['dataTime'];
    timeDate = Get.arguments['timeDate'];
    print(timeDate);
    getData();
  }
}
