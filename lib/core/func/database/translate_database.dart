import 'package:get/get.dart';
import 'package:test_app/core/server/server.dart';

translateDataBase(columnar, columnen) {
  MyServices myservices = Get.find();
  if (myservices.sharedPreferences.getString("lang") == "AR") {
    return columnar;
  } else {
    return columnen;
  }
}
