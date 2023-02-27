import 'package:get/get.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/linlapi.dart';
import 'package:test_app/core/server/server.dart';

class ChangePasswordData {
  Crud curd;
  ChangePasswordData(this.curd);
  MyServices myServices = Get.find();

  postData(String oldPass, String newPass) async {
    token = myServices.sharedPreferences.getString("token");
    var response = await curd.postResetPass(
        linkUrl: AppLink.changePassword,
        data: {
          "OldPassword": oldPass,
          "NewPassword": newPass,
        },
        token: token);
    return response.fold((l) => l, (r) => r);
  }
}
