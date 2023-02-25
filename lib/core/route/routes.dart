import 'package:get/get.dart';
import 'package:test_app/core/middleware/my_middleware.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/pages/screen/auth/login_page.dart';
import 'package:test_app/pages/screen/auth/register_page.dart';
import 'package:test_app/pages/screen/auth_attach/forget_password.dart';
import 'package:test_app/pages/screen/auth_attach/link_sent.dart';
import 'package:test_app/pages/screen/auth_attach/reset_password_page.dart';
import 'package:test_app/pages/screen/history_screen/first_history_screen.dart';
import 'package:test_app/pages/screen/home/history_screen.dart';
import 'package:test_app/pages/screen/home/nearby_hospital_screen.dart';
import 'package:test_app/pages/screen/home/support_screen.dart';
import 'package:test_app/pages/screen/home/internal_screen.dart';
import 'package:test_app/pages/screen/internal_screen/sec_internal_page.dart';
import 'package:test_app/pages/screen/nearby_hospital_screen/first_nearbyschool_screen.dart';
import 'package:test_app/pages/screen/profile_screen/change_password_user.dart';
import 'package:test_app/pages/screen/profile_screen/profile_screen.dart';
import 'package:test_app/pages/screen/home/rigster_screen.dart';
import 'package:test_app/pages/screen/qestion_screen/questation_freetext_screen.dart';
import 'package:test_app/pages/screen/register_case_attach/interactive_first.dart';
import 'package:test_app/pages/screen/splach_screen/home.dart';
import 'package:test_app/pages/screen/home/home_page.dart';

List<GetPage<dynamic>>? routes = [
  // =========== Splach =========//
  GetPage(
      name: AppRoute.start,
      page: () => const HomePage(),
      middlewares: [MyMiddleWare()]),
  // =============== auth =====//
  GetPage(name: AppRoute.registerPage, page: () => const RegisterScreen()),
  GetPage(name: AppRoute.loginPage, page: () => const LoginScreen()),
  // =============== auth_attach =====//
  GetPage(name: AppRoute.forggetPass, page: () => const ForgetPasswordScreen()),
  GetPage(name: AppRoute.linkSent, page: () => const LinkSentScreen()),
  GetPage(
      name: AppRoute.resetPassword, page: () => const ResetePasswordScreen()),
  // =============== Home Page =====//
  GetPage(name: AppRoute.homePage, page: () => HomePageScreen()),
  GetPage(
      name: AppRoute.registerCase, page: () => const RegiterCaseScreen()),
  GetPage(name: AppRoute.historyPage, page: () => const HistoryScreen()),
  GetPage(name: AppRoute.nearbyHospital, page: () => NearbyHospitalScreen()),
  GetPage(name: AppRoute.support, page: () => const SupportScreen()),
  GetPage(
      name: AppRoute.interactiveScreen, page: () => const InteractiveScreen()),
  GetPage(
      name: AppRoute.internalCase,
      page: () => const InternalScreen()),
  GetPage(
      name: AppRoute.internalCaseSec, page: () => const InternalSecondScreen()),
  GetPage(
      name: AppRoute.nearbyHospitalFirst,
      page: () => const FirstNearByHospitalScreen()),
  GetPage(
      name: AppRoute.firstHistoryScreen,
      page: () => const FirstUserHistoryScreen()),
  GetPage(name: AppRoute.userProfile, page: () =>  ProfileScreeen()),
  GetPage(
      name: AppRoute.changePassword,
      page: () => const ChangePasswordUserScreen()),
        GetPage(
      name: AppRoute.questionScreen,
      page: () =>   QuestationScreen()),
];
