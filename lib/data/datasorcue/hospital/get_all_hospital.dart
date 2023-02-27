import 'package:get/get.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/linlapi.dart';
import 'package:test_app/core/server/server.dart';

class GetHonspital {
  Crud curd;
  GetHonspital(this.curd);
  MyServices myServices = Get.find();

  postData(double longitude, double latitude) async {
    token = myServices.sharedPreferences.getString("token");
    var response = await curd.postData(
      linkUrl: AppLink.getallHospital,
      data: {
        "Longitude": longitude,
        "Latitude": latitude,
      },
      token: token,
    );
    return response.fold((l) => l, (r) => r);
  }
}
