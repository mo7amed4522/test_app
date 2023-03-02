import 'dart:async';

import 'package:get/get.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/data/datasorcue/hospital/first_hosiptal.dart';
import 'package:test_app/module/hosiptal_first_model.dart';

abstract class FirstNearByHospitalScreen extends GetxController {
  getData();
}

class FirstNearByHospitalScreenIMP extends FirstNearByHospitalScreen {
  HospitalFirst hospitalFirst = HospitalFirst(Get.find());
  String? idHospital;
  Map<String,dynamic> items= {};
  HospitalFirstModel? hospitalFirstModel;
  StatusRequest? statusRequest;

  @override
  void onInit() {
    super.onInit();
    idHospital = Get.arguments['hospitalID'];
    getData();
  }

  @override
  getData() async {
    idHospital = Get.arguments['hospitalID'];
    items.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await hospitalFirst.getData(idHospital!);
    statusRequest = handlingData(response);
    update();
    if (statusRequest == StatusRequest.success) {
      if (response['Status'] == 0) {
        items = response;
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
}
