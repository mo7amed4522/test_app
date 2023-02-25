import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/server/server.dart';
import 'package:test_app/data/datasorcue/home/foqs/fogs.dart';

abstract class DropDowunMuneSupportWidget extends GetxController {
  getData();
}

class DropDowunMuneSupportWidgetIMP extends DropDowunMuneSupportWidget {
  //Fogsgenerated? faqs;
  Crud curd = Crud();
  List data = [];
  StatusRequest? statusRequest;
  MyServices myServices = Get.find();
  GetFogsData fogsData = GetFogsData(Get.find());

  @override
  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await fogsData.getData();
    statusRequest = handlingData(response);
    if (kDebugMode) {
      print(statusRequest);
    }
    if (StatusRequest.success == statusRequest) {
      data.addAll(response['Faqs']);
      if (kDebugMode) {
        print(statusRequest);
      }
      update();
    } else {
      update();
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
