// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/auth_attach/forget_pass_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/func/auth/validationinput.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey<FormState>();

    return GetBuilder<ForgetPasswordIMP>(
      init: ForgetPasswordIMP(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColor.defaultColor,
        appBar: AppBar(
            elevation: 0.0,
            foregroundColor: AppColor.defaultColor,
            backgroundColor: AppColor.defaultColor,
            shadowColor: AppColor.defaultColor),
        body: Form(
          key: formState,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
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
                  height: Get.height / 3,
                  child: SvgPicture.asset(AppLinkImage.forgetPass,
                      fit: BoxFit.contain),
                ),
                SizedBox(height: 50),
                Center(
                    child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins-Regular",
                      color: AppColor.black,
                      fontSize: 27),
                )),
                SizedBox(height: 5),
                Center(
                    child: Text(
                  "Enter your email to get a verification",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins-Medium",
                      color: AppColor.grey),
                )),
                Center(
                    child: Text(
                  "code",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins-Medium",
                      color: AppColor.grey),
                )),
                SizedBox(height: 20),
                defaultTextForm(
                    controller: controller.email,
                    keyboardType: TextInputType.name,
                    assetName: AppLinkImage.iconsEmail,
                    label: "Email",
                    prefix: Icons.email_rounded,
                    onTap: () {},
                    onChange: (String? vall) {},
                    onSubmit: (String? vall) {},
                    color: Colors.black,
                    validate: (String? val) {
                      return validInput(val!, 6, 100, "email");
                    }),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.only(
                      left: Get.width / 9, right: Get.width / 9),
                  child: GestureDetector(
                      child: animatedOptacity("SUBMIT"),
                      onTap: () {
                        if (formState.currentState!.validate()) {
                          controller.submit();
                          print("object");
                        } else {
                          Get.snackbar(
                            "Error !!",
                            "please enter your email address",
                            snackPosition: SnackPosition.BOTTOM,
                          );
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
