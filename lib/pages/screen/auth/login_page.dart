// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/controller/auth/login_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/splach_scenn_widget/logo_widget.dart';

class Loginage extends StatelessWidget {
  const Loginage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<LoginControllerIMP>(
            init: LoginControllerIMP(),
            builder: (controller) => Sizer(
                builder: (context, orientation, deviceType) =>
                    SingleChildScrollView(
                      child: Column(children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 5.h, right: 7.h, left: 7.h),
                          child: LogoImageWidget(
                              image: AppLinkImage.logoImage2,
                              height: 20.h,
                              width: 50.w),
                        ),
                        SizedBox(height: 5.h),
                        Center(
                            child: TextWidgetShapeEnglish(
                                text: "Welcome Back",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                size: 18.sp)),
                        Center(
                            child: TextWidgetShapeEnglish(
                                text: "Please enter your email and password",
                                size: 15.sp,
                                fontWeight: FontWeight.normal,
                                color: AppColor.colorFontgry)),
                        Center(
                            child: TextWidgetShapeEnglish(
                                text: "to countinue",
                                size: 15.sp,
                                fontWeight: FontWeight.normal,
                                color: AppColor.colorFontgry)),
                        SizedBox(height: 5.h),
                        Padding(
                          padding: EdgeInsets.only(right: 2.h, left: 2.h),
                          child: defaultTextForm(
                              controller: controller.emailController,
                              keyboardType: TextInputType.name,
                              assetName: AppLinkImage.iconsEmail,
                              label: "Email",
                              prefix: Icons.email_rounded,
                              onTap: () {},
                              onChange: (String? vall) {},
                              onSubmit: (String? vall) {},
                              color: Colors.black,
                              validate: (String? val) {}),
                        ),
                        SizedBox(height: 1.h),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h, right: 2.h),
                          child: defaultTextForm(
                              controller: controller.passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              assetName: AppLinkImage.iconsPassword,
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
                              color: Colors.grey,
                              validate: (String? val) {}),
                        ),
                        SizedBox(height: 3.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(
                                  onPressed: () {
                                    controller.goToForgetPassword();
                                  },
                                  child: TextWidgetShapeEnglish(
                                      text: "Forget Password ?",
                                      size: 10.sp,
                                      fontWeight: FontWeight.normal,
                                      color: AppColor.defaultColor))
                            ]),
                        SizedBox(height: 3.h),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 6.h, vertical: 6.h),
                            child: GestureDetector(
                                child: animatedOptacity("LOGIN"),
                                onTap: () {
                                  controller.login();
                                })),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidgetShapeEnglish(
                                  text: "Already have an account ?",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  size: 10.sp),
                              MaterialButton(
                                onPressed: () {
                                  controller.goToSignUpPage();
                                },
                                child: TextWidgetShapeEnglish(
                                    text: "SIGN UP",
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.defaultColor,
                                    size: 15.sp),
                              )
                            ]),
                        SizedBox(height: 3.h)
                      ]),
                    ))));
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: GetBuilder<LoginControllerIMP>(
          init: LoginControllerIMP(),
          builder: (controller) => ListView(
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
                  child: TextWidgetShapeEnglish(
                      text: "Welcome Back",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      size: 27)),
              SizedBox(height: 6),
              Center(
                  child: TextWidgetShapeEnglish(
                      text: "Please enter your email and password",
                      size: 20,
                      fontWeight: FontWeight.normal,
                      color: AppColor.colorFontgry)),
              Center(
                  child: TextWidgetShapeEnglish(
                      text: "to countinue",
                      size: 20,
                      fontWeight: FontWeight.normal,
                      color: AppColor.colorFontgry)),
              SizedBox(height: 30),
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
                  validate: (String? val) {}),
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
                  validate: (String? val) {}),
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                MaterialButton(
                    onPressed: () {
                      controller.goToForgetPassword();
                    },
                    child: TextWidgetShapeEnglish(
                        text: "Forget Password ?",
                        size: 17,
                        fontWeight: FontWeight.normal,
                        color: AppColor.defaultColor))
              ]),
              const SizedBox(height: 50),
              Padding(
                  padding: EdgeInsets.only(
                      right: Get.width / 8, left: Get.width / 8),
                  child: GestureDetector(
                      child: animatedOptacity("LOGIN"),
                      onTap: () {
                        controller.login();
                      })),
                      SizedBox(height: Get.height /6),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidgetShapeEnglish(
                                  text: "Already have an account ?",
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  size: 15),
                              MaterialButton(
                                onPressed: () {
                                  controller.goToSignUpPage();
                                },
                                child: TextWidgetShapeEnglish(
                                    text: "SIGN UP",
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.defaultColor,
                                    size: 20),
                              )
                            ]),
            ],
          ),
        ),
      ),
    );
  }
}
