// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:test_app/controller/auth/login_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/auth/aleartexitapp.dart';
import 'package:test_app/core/func/auth/validationinput.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/splach_scenn_widget/logo_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey<FormState>();
    return Scaffold(
        backgroundColor: AppColor.defaultColor,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.defaultColor,
            elevation: 0.0),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: const BoxDecoration(
                color: AppColor.nearlyWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: WillPopScope(
              onWillPop: aleratExitApp,
              child: GetBuilder<LoginControllerIMP>(
                  init: LoginControllerIMP(),
                  builder: (controller) => controller.statusRequest ==
                          StatusRequest.loading
                      ? Center(
                          child: Lottie.asset(AppLinkImage.loading,
                              width: Get.width, height: Get.height))
                      : Form(
                          key: formState,
                          child: Column(
                            children: [
                              Padding(
                                    padding: EdgeInsets.only(
                                        right: Get.width / 3, left: Get.width / 3),
                                    child: LogoImageWidget(
                                        image: AppLinkImage.logoImage2,
                                        height: Get.height / 10,
                                        width: Get.width / 4)),
                                SizedBox(height: 50),
                                Center(
                                    child: Text(
                                  "Welcome Back",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                      color: Colors.black,
                                      fontSize: 27),
                                )),
                                SizedBox(height: 6),
                                Center(
                                    child: Text(
                                  "Please enter your email and password",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Poppins-Medium",
                                      color: AppColor.colorFontgry),
                                )),
                                Center(
                                    child: Text(
                                  "to countinue",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Poppins-Medium",
                                      color: AppColor.colorFontgry),
                                )),
                                SizedBox(height: 30),
                              Expanded(
                                child: ListView(children: [
                                  SizedBox(height: 10),
                                  defaultTextForm(
                                      controller: controller.emailController,
                                      assetName: AppLinkImage.iconsEmail,
                                      keyboardType: TextInputType.emailAddress,
                                      label: "Email",
                                      onTap: () {},
                                      onChange: (String? vall) {},
                                      onSubmit: (String? vall) {},
                                      prefix: Icons.email_outlined,
                                      color: Colors.black,
                                      validate: (String? val) {
                                        return validInput(val!, 5, 100, "email");
                                      }),
                                  SizedBox(height: 15),
                                  defaultTextForm(
                                      controller: controller.passwordController,
                                      assetName: AppLinkImage.iconsPassword,
                                      keyboardType: TextInputType.visiblePassword,
                                      label: "Password",
                                      onTap: () {},
                                      onChange: (String? vall) {},
                                      onSubmit: (String? vall) {},
                                      prefix: Icons.lock_outline,
                                      suffix: controller.isPassword == true
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined,
                                      isPassword: controller.isPassword,
                                      suffixPress: () {
                                        controller.changeVisablePass();
                                      },
                                      color: Colors.black,
                                      validate: (String? val) {
                                        return validInput(
                                            val!, 5, 100, "password");
                                      }),
                                  const SizedBox(height: 20),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        MaterialButton(
                                            onPressed: () {
                                              controller.goToForgetPassword();
                                            },
                                            child: Text(
                                              "Forget Password ?",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily: "Poppins-Regular",
                                                  color: AppColor.defaultColor),
                                            ))
                                      ]),
                                  const SizedBox(height: 50),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          right: Get.width / 8,
                                          left: Get.width / 8),
                                      child: GestureDetector(
                                          child: animatedOptacity("LOGIN"),
                                          onTap: () {
                                            var formData = formState.currentState;
                                            if (formData!.validate()) {
                                              controller.login();
                                            } else {
                                              Get.snackbar(
                                                'Error Login',
                                                "you have an error while Login to your account !",
                                                snackPosition:
                                                    SnackPosition.BOTTOM,
                                                colorText: AppColor.grey,
                                              );
                                              controller.statusRequest =
                                                  StatusRequest.failure;
                                            }
                                          })),
                                  SizedBox(height: Get.height / 12),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Already have an account ?",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                              fontFamily: "Poppins-Regular",
                                              fontSize: 15),
                                        ),
                                        MaterialButton(
                                          onPressed: () {
                                            controller.goToSignUpPage();
                                          },
                                          child: Text(
                                            "SIGN UP",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColor.defaultColor,
                                                fontFamily: "Poppins-Regular",
                                                fontSize: 20),
                                          ),
                                        )
                                      ])
                                ]),
                              ),
                            ],
                          ),
                        )),
            )));
  }
}
