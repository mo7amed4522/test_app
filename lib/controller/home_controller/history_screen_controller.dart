import 'package:get/get.dart';
import 'package:test_app/core/route/app_routes.dart';

abstract class UserHistoryScreenController extends GetxController{
  goToUserHistoryScreenFirst();
}
class UserHistoryScreenControllerIMP extends UserHistoryScreenController{
  @override
  goToUserHistoryScreenFirst() {
    Get.toNamed(AppRoute.firstHistoryScreen);
  }
}