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
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/splach_scenn_widget/logo_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                ? Center(child: Lottie.asset(AppLinkImage.loading,width: Get.width,height: Get.height /2))
                : Form(
                      key: controller.formState,
                      child: ListView(children: [
                        Padding(
                            padding: EdgeInsets.only(
                                right: Get.width / 3, left: Get.width / 3),
                            child: LogoImageWidget(
                                image: AppLinkImage.logoImage2,
                                height: Get.height / 10,
                                width: Get.width / 4)),
                        SizedBox(height: 50),
                        Center(
                            child: TextWidgetShapeEnglish(
                                text: "New Account",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                size: 27)),
                        SizedBox(height: 6),
                        Center(
                            child: TextWidgetShapeEnglish(
                                text: "Please enter the following details to",
                                size: 20,
                                fontWeight: FontWeight.normal,
                                color: AppColor.colorFontgry)),
                        Center(
                            child: TextWidgetShapeEnglish(
                                text: "create an account",
                                size: 20,
                                fontWeight: FontWeight.normal,
                                color: AppColor.colorFontgry)),
                        SizedBox(height: 30),
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
                              return validInput(val!, 5, 100, "password");
                            }),
                        SizedBox(height: 15),
                        defaultTextForm(
                            controller: controller.confPasswordController,
                            assetName: AppLinkImage.iconsPassword,
                            keyboardType: TextInputType.visiblePassword,
                            label: "Confirm Password",
                            prefix: Icons.lock_outline,
                            onTap: () {},
                            onChange: (String? vall) {},
                            onSubmit: (String? vall) {},
                            suffix: controller.isPasswordconfirm == true
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            isPassword: controller.isPasswordconfirm,
                            suffixPress: () {
                              controller.changeVisablePassConfirm();
                            },
                            color: Colors.black,
                            validate: (String? val) {
                              return validInput(val!, 5, 100, "password");
                            }),
                        const SizedBox(height: 50),
                        Padding(
                            padding: EdgeInsets.only(
                                right: Get.width / 8, left: Get.width / 8),
                            child: GestureDetector(
                                child: animatedOptacity("SIGN UP"),
                                onTap: () {
                                  controller.signUp();
                                })),
                        SizedBox(height: Get.height / 15),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidgetShapeEnglish(
                                  text: "Already have an account ?",
                                  fontWeight: FontWeight.normal,
                                  color: AppColor.black,
                                  size: 15),
                              MaterialButton(
                                  child: TextWidgetShapeEnglish(
                                      text: "LOGIN",
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.defaultColor,
                                      size: 20),
                                  onPressed: () {
                                    controller.login();
                                  })
                            ])
                      ]),
                    )
                )));
  }
}
