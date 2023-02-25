import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/linlapi.dart';

class CheckEmailForgetPassword {
  Crud curd;
  CheckEmailForgetPassword(this.curd);

  postData(String email) async {
    var response = await curd.postData(
      linkUrl: AppLink.checkPasswordForget,
      data: {
        "Email": email,
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}
