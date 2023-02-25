import 'package:get/get.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/linlapi.dart';
import 'package:test_app/core/server/server.dart';

class GetRegisterSec {
  Crud curd;
  GetRegisterSec(this.curd);
   MyServices myServices = Get.find();

  getData() async {
    token = myServices.sharedPreferences.getString("token");
    var response = await curd.getData(linkUrl: AppLink.getAllParts, token: token);
    return response.fold((l) => l, (r) => r);
  }
}
