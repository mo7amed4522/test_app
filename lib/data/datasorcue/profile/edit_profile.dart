import 'package:get/get.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/linlapi.dart';
import 'package:test_app/core/server/server.dart';

class EditData {
  Crud curd;
  EditData(this.curd);
  MyServices myServices = Get.find();

  postData(String name, String email) async {
    token = myServices.sharedPreferences.getString("token");
    var response = await curd.postData(linkUrl: AppLink.updateUser, data: {},
    token: token
    );
    return response.fold((l) => l, (r) => r);
  }

  post() async {
    token = myServices.sharedPreferences.getString("token");
    var response = await curd.postData(
      linkUrl: AppLink.getUser,
      data: {},
      token: token,
    );
     return response.fold((l) => l, (r) => r);
  }
}
