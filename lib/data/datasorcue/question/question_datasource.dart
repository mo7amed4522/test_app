import 'package:get/get.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/linlapi.dart';
import 'package:test_app/core/server/server.dart';

class QuestioinData {
  Crud curd;
  QuestioinData(this.curd);
  MyServices myServices = Get.find();
  gettData(String iD) async {
    token = myServices.sharedPreferences.getString("token");
    String url = "${AppLink.getallquestionByID}/$iD";
    var response = await curd.getData(linkUrl: url, token: token);
    return response.fold((l) => l, (r) => r);
  }

  postData(Map<dynamic, dynamic> data) async {
    token = myServices.sharedPreferences.getString("token");
    var response = await curd.postData(
      linkUrl: AppLink.foqs,
      data: data,
      token: token,
    );
    return response.fold((l) => l, (r) => r);
  }
}
