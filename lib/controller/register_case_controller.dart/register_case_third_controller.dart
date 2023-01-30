import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class RegisterCaseThirdController extends GetxController {
  goToFourthPage();
}

class RegisterCaseThirdControllerIMP extends RegisterCaseThirdController {
  @override
  goToFourthPage() {
    Get.toNamed(AppRoute.registerCaseFour);
  }
}
