import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/Binding/initial_bindings.dart';
import 'package:test_app/core/route/routes.dart';
import 'core/server/server.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lifeline",
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
