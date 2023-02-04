import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class ProfileEditScreenController extends GetxController {
  changeEnable();
  save();
}

class ProfileEditScreenControllerIMP extends ProfileEditScreenController {
  String name = "John Doe";
  String email = "johndoe122@email.com";
  String button = "Save";
  bool enable = false;

  @override
  changeEnable() {
    enable = !enable;
    if(enable == false){
      button ="Save";
    }else{
      button ="Update";
    }
    update();
  }

  @override
  save() {
    enable = false;
    button = "Save";
    Get.toNamed(AppRoute.homePage);
  }
}
