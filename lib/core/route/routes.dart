import 'package:get/get.dart';
import 'package:test_app/core/middleware/my_middleware.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/pages/screen/auth/login_page.dart';
import 'package:test_app/pages/screen/auth/register_page.dart';
import 'package:test_app/pages/screen/auth_attach/forget_password.dart';
import 'package:test_app/pages/screen/auth_attach/link_sent.dart';
import 'package:test_app/pages/screen/auth_attach/reset_password_page.dart';
import 'package:test_app/pages/screen/home/history_screen.dart';
import 'package:test_app/pages/screen/home/nearby_hospital_screen.dart';
import 'package:test_app/pages/screen/home/support_screen.dart';
import 'package:test_app/pages/screen/register_case_attach/first_screen_register.dart';
import 'package:test_app/pages/screen/register_case_attach/four_register_case_screen.dart';
import 'package:test_app/pages/screen/register_case_attach/sec_register_case_screen.dart';
import 'package:test_app/pages/screen/register_case_attach/third_register_case_screen.dart';
import 'package:test_app/pages/screen/splach_screen/home.dart';
import 'package:test_app/pages/screen/home/home_page.dart';

List<GetPage<dynamic>>? routes = [
  // =========== Splach =========//
  GetPage(
      name: AppRoute.start,
      page: () => const HomePage(),
      middlewares: [MyMiddleWare()]),
  // =============== auth =====//
  GetPage(name: AppRoute.registerPage, page: () => const RegisterPage()),
  GetPage(name: AppRoute.loginPage, page: () => const LoginPage()),
  // =============== auth_attach =====//
  GetPage(name: AppRoute.forggetPass, page: () => const ForgetPasswordPage()),
  GetPage(name: AppRoute.linkSent, page: () => const LinkSentPage()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPasswordPage()),
  // =============== Home Page =====//
  GetPage(name: AppRoute.homePage, page: () => HomePageScreen()),
  GetPage(
      name: AppRoute.registerCase, page: () => const RegisterCaseFirstPage()),
  GetPage(name: AppRoute.historyPage, page: () => const HistoryScreen()),
  GetPage(
      name: AppRoute.nearbyHospital, page: () => const NearbyHospitalScreen()),
  GetPage(name: AppRoute.support, page: () => const SupportScreen()),
  GetPage(
      name: AppRoute.registerCaseSec, page: () => const RegisterCaseSecPage()),
  GetPage(
      name: AppRoute.registerCaseThird,
      page: () => const RegisterCaseScreenThird()),
  GetPage(
      name: AppRoute.registerCaseFour,
      page: () => const RegisterCaseFourScreen()),
];
