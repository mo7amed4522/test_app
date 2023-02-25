import 'package:flutter/foundation.dart';
import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/linlapi.dart';

class SigninData {
  Crud curd;
  SigninData(this.curd);

  postData(String email, String password) async {
    var response = await curd.postData(linkUrl: AppLink.signinLink, data: {
      "Email": email,
      "Password": password,
    });
    if (kDebugMode) {
      print(AppLink.signinLink);
    }
    return response.fold((l) => l, (r) => r);
  }
}
