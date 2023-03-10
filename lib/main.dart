import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/Binding/initial_bindings.dart';
import 'package:test_app/core/route/routes.dart';
import 'package:test_app/core/shared_preference/cache_helper.dart';
import 'core/server/server.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Life Line",
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
