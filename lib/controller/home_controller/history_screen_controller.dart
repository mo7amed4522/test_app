import 'package:get/get.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/server/server.dart';
import 'package:test_app/data/datasorcue/home/userHistory/user_history.dart';

abstract class UserHistoryScreenController extends GetxController {
  getData();
}

class UserHistoryScreenControllerIMP extends UserHistoryScreenController {
  UserHistory userHistory = UserHistory(Get.find());
  Crud curd = Crud();
  StatusRequest? statusRequest;
  MyServices myServices = Get.find();
  List items = [];

  

  @override
  getData() async {
    items.clear();
    statusRequest = StatusRequest.loading;
    var response = await userHistory.getData();
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      items = response['Cases'];
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
