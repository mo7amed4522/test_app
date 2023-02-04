import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class HomeController extends GetxController {
  goToChangePasswordScreen();
  goToProfileScreen();
  logOut();
}

class HomeControllerIMP extends HomeController {
  @override
  goToChangePasswordScreen() {
    Get.toNamed(AppRoute.changePassword);
  }

  @override
  goToProfileScreen() {
    Get.toNamed(AppRoute.userProfile);
  }

  @override
  logOut() {}
}
