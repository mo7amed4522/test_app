// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/auth_attach/reset_passsword_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';

class ResetePasswordScreen extends StatelessWidget {
  const ResetePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.defaultColor,
      appBar: AppBar(
          elevation: 0.0,
          foregroundColor: AppColor.defaultColor,
          backgroundColor: AppColor.defaultColor,
          shadowColor: AppColor.defaultColor),
      body: GetBuilder<ResetPasswordControllerIMP>(
        init: ResetPasswordControllerIMP(),
        builder: (controller) => Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: AppColor.nearlyWhite),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColor.back,
                      borderRadius: BorderRadius.circular(9)),
                  child: CustomIconBtn(
                      icon: Icons.arrow_back,
                      color: AppColor.black,
                      onPressed: () {
                        Get.back();
                      }),
                )
              ]),
              SizedBox(height: 10),
              SizedBox(
                height: Get.height / 4,
                child: SvgPicture.asset(AppLinkImage.resetPass,
                    fit: BoxFit.contain),
              ),
              SizedBox(height: 50),
              Center(
                  child: Text(
                       "Reset Password",
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontFamily: "Poppins-Regular",
                      color: AppColor.black,
                      fontSize: 27
                       ),
                     )),
              SizedBox(height: 5),
              Center(
                  child: Text(
                       "Reset your password to login to",
                       style: TextStyle(
                        fontSize: 18,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins-Medium",
                      color: AppColor.grey
                       ),
                      )),
              Center(
                  child: Text(
                       "your account",
                       style: TextStyle(
                        fontSize: 18,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins-Medium",
                      color: AppColor.grey
                       ),
                      )),
              SizedBox(height: 20),
              defaultTextForm(
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
                  color: AppColor.grey,
                  validate: (String? val) {}),
              SizedBox(height: 15),
              defaultTextForm(
                  controller: controller.confirmPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  assetName: AppLinkImage.iconsPassword,
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
                  color: AppColor.grey,
                  validate: (String? val) {}),
              SizedBox(height: 50),
              Padding(
                padding:
                    EdgeInsets.only(right: Get.width / 8, left: Get.width / 8),
                child: GestureDetector(
                    child: animatedOptacity("SUBMIT"),
                    onTap: () {
                      controller.successReset(context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
