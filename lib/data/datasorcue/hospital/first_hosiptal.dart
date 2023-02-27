import 'package:get/get.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/linlapi.dart';
import 'package:test_app/core/server/server.dart';

class HospitalFirst {
  Crud curd;
  HospitalFirst(this.curd);
   MyServices myServices = Get.find();

  getData(String iD) async {
    token = myServices.sharedPreferences.getString("token");
    String url = "${AppLink.getHospitalByID}/$iD";
    var response = await curd.getData(linkUrl: url, token: token);
    return response.fold((l) => l, (r) => r);
  }
}
