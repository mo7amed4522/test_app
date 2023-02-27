// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/server/server.dart';
import 'package:test_app/data/datasorcue/home/register_case/rigster_sec.dart';

abstract class InternalFirstPageController extends GetxController {
  changeDropMnue(Val);
  getData();
}

class InternalFirstPageControllerIMP extends InternalFirstPageController {
  Crud curd = Crud();
  StatusRequest? statusRequest;
  MyServices myServices = Get.find();
  String? dropdownvalue;
  GetRegisterSec getRegisterSec = GetRegisterSec(Get.find());
  List items = [];
  List internal=[];

  @override
  changeDropMnue(Val) {
    dropdownvalue = Val;
    update();
  }

  @override
  getData() async {
    items.clear();
    statusRequest = StatusRequest.loading;
    var response = await getRegisterSec.getData();
    statusRequest = handlingData(response);
    update();
    if (StatusRequest.success == statusRequest) {
      items = response['BodyParts'];
      for (int x = 0;x<items.length;x++){
        if(items[x]['Type'] == "Internal"){
          internal.add(items[x]);
        }
      }
      update();
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getData();
  }


}
