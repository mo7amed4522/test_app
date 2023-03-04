// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:test_app/controller/auth/register_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/auth/validationinput.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/splach_scenn_widget/logo_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey<FormState>();

    return Scaffold(
        backgroundColor: AppColor.defaultColor,
        appBar: AppBar(
            elevation: 0.0,
            foregroundColor: AppColor.defaultColor,
            backgroundColor: AppColor.defaultColor,
            shadowColor: AppColor.defaultColor),
        body: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: AppColor.nearlyWhite),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: GetBuilder<RegisterControllerIMP>(
                init: RegisterControllerIMP(),
                builder: (controller) => controller.statusRequest ==
                        StatusRequest.loading
                    ? Center(
                        child: Lottie.asset(AppLinkImage.loading,
                            width: Get.width, height: Get.height / 2))
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
                              "New Account",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins-Regular",
                                  color: Colors.black,
                                  fontSize: 27),
                            )),
                            SizedBox(height: 6),
                            Center(
                                child: Text(
                              "Please enter the following details to",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins-Medium",
                                  fontWeight: FontWeight.normal,
                                  color: AppColor.colorFontgry),
                            )),
                            Center(
                                child: Text(
                              "create an account",
                              style: TextStyle(
                                  fontFamily: "Poppins-Medium",
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal,
                                  color: AppColor.colorFontgry),
                            )),
                            SizedBox(height: 30),
                            Expanded(
                              child: ListView(children: [
                                SizedBox(height: 10),
                                defaultTextForm(
                                    controller: controller.nameController,
                                    keyboardType: TextInputType.name,
                                    assetName: AppLinkImage.iconsUser,
                                    label: "Name",
                                    prefix: Icons.person,
                                    onTap: () {},
                                    onChange: (String? vall) {},
                                    onSubmit: (String? vall) {},
                                    color: Colors.black,
                                    validate: (String? val) {
                                      return validInput(val!, 5, 100, "name");
                                    }),
                                SizedBox(height: 15),
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
                                const SizedBox(height: 50),
                                Padding(
                                    padding: EdgeInsets.only(
                                        right: Get.width / 8,
                                        left: Get.width / 8),
                                    child: GestureDetector(
                                        child: animatedOptacity("SIGN UP"),
                                        onTap: () {
                                          var formData = formState.currentState;
                                          if (formData!.validate()) {
                                            controller.signUp();
                                          } else {
                                            Get.snackbar('Error Register',
                                                "you have an error in your email address or phone or password",
                                                snackPosition:
                                                    SnackPosition.BOTTOM);
                                          }
                                        })),
                                SizedBox(height: Get.height / 15),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Already have an account ?",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: AppColor.black,
                                            fontFamily: "Poppins-Medium",
                                            fontSize: 15),
                                      ),
                                      MaterialButton(
                                          child: Text(
                                            "LOGIN",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: AppColor.defaultColor,
                                                fontFamily: "Poppins-Medium",
                                                fontSize: 20),
                                          ),
                                          onPressed: () {
                                            controller.login();
                                          })
                                    ])
                              ]),
                            ),
                          ],
                        ),
                      ))));
  }
}
