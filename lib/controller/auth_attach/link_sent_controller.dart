import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class LinkSentContoller extends GetxController {
  goToResetePassword();
}

class LinkSentControllerIMP extends LinkSentContoller {
  @override
  goToResetePassword() {
    Get.toNamed(AppRoute.resetPassword);
  }
}
