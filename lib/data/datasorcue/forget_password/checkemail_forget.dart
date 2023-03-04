import 'package:get/get.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/linlapi.dart';
import 'package:test_app/core/server/server.dart';

class CheckEmailForgetPassword {
  Crud curd;
  CheckEmailForgetPassword(this.curd);
   MyServices myServices = Get.find();

  postData(String email) async {
    token = myServices.sharedPreferences.getString("token");
    var response = await curd.postData(
      linkUrl: AppLink.checkPasswordForget,
      data: {
        "Email": email,
        "Role":"Patient",
        "LinkUrl":"http://dev.mylifeline.se/resetpassword/${token}"
      },
      token: token,
    );
    return response.fold((l) => l, (r) => r);
  }
}
