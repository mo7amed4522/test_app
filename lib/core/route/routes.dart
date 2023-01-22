import 'package:get/get.dart';
import 'package:test_app/core/middleware/my_middleware.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/pages/screen/auth/login_page.dart';
import 'package:test_app/pages/screen/auth/register_page.dart';
import 'package:test_app/pages/screen/auth_attach/forget_password.dart';
import 'package:test_app/pages/screen/auth_attach/link_sent.dart';
import 'package:test_app/pages/screen/auth_attach/reset_password_page.dart';
import 'package:test_app/pages/screen/home.dart';

List<GetPage<dynamic>>? routes = [
  // =========== Splach =========//
  GetPage(
      name: AppRoute.start,
      page: () => const HomePage(),
      middlewares: [MyMiddleWare()]),
  // =============== auth =====//
  GetPage(
    name: AppRoute.registerPage,
    page: () => const RegisterPage(),
  ),
  GetPage(
    name: AppRoute.loginPage,
    page: () => const LoginPage(),
  ),
  // =============== auth_attach =====//
  GetPage(
    name: AppRoute.forggetPass,
    page: () => const ForgetPasswordPage(),
  ),
  GetPage(
    name: AppRoute.linkSent,
    page: () => const LinkSentPage(),
  ),
  GetPage(
    name: AppRoute.resetPassword,
    page: () => const ResetPasswordPage(),
  ),
];
