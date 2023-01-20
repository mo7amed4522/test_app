import 'package:get/get.dart';
import 'package:test_app/core/curd/curd.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
