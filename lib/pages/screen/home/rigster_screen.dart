// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/register_case_controller.dart/register_case_first_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/home_widget/choice_button_widget.dart';

class RegiterCaseScreen extends StatelessWidget {
  const RegiterCaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterCaseFirstIMP>(
      init: RegisterCaseFirstIMP(),
      builder: (controller) => Scaffold(
          backgroundColor: AppColor.backgroungRegister,
          appBar: AppBar(
            toolbarHeight: 80,
            title: Text(
              "Register Case",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  color: AppColor.black),
            ),
            centerTitle: true,
            leading: Padding(
                padding: EdgeInsets.only(left: 5),
                child: CustomIconBtn(
                    icon: Icons.arrow_back,
                    color: AppColor.black,
                    onPressed: () {
                      Get.back();
                    })),
            iconTheme: const IconThemeData(color: AppColor.black),
            backgroundColor: AppColor.backgroungRegister,
            elevation: 0.0,
          ),
          body: Container(
            color: AppColor.backgroungRegister,
            padding: EdgeInsets.only(right: 1, left: 1, top: 5),
            child: Column(children: [
              SizedBox(height: 30),
              SvgPicture.asset(AppLinkImage.regiserCase,
                  height: 80, fit: BoxFit.contain),
              SizedBox(height: 15),
              Center(
                  child: Text(
                "Register Case",
                style: TextStyle(
                    fontSize: 25,
                    color: AppColor.defaultColor,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              )),
              SizedBox(height: 2),
              Center(
                  child: Text(
                "Please enter the following details to",
                style: TextStyle(
                    fontSize: 18, fontFamily: "Poppins", color: AppColor.grey),
              )),
              Center(
                  child: Text(
                "register your case",
                style: TextStyle(
                    fontSize: 18, fontFamily: "Poppins", color: AppColor.grey),
              )),
              SizedBox(height: 80),
              Center(
                  child: Text(
                "Please select one of the following",
                style: TextStyle(
                    fontSize: 18,
                    color: AppColor.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal),
              )),
              SizedBox(height: 20),
              ChoiceButtonWidget(
                  onTap: () {
                    controller.changeInteractive();
                  },
                  text: "Interactive body",
                  color: controller.color,
                  colorText: controller.colorText),
              ChoiceButtonWidget(
                  onTap: () {
                    controller.changeInternal();
                  },
                  text: "Internal list",
                  color: controller.color2,
                  colorText: controller.colorText2),
              Spacer(),
              Padding(
                padding:
                    EdgeInsets.only(right: Get.width / 9, left: Get.width / 9),
                child: GestureDetector(
                    onTap: () {
                      controller.goToSecRegisterCasePage(controller.x);
                    },
                    child: animatedOptacity("Next")),
              ),
              SizedBox(height: 20),
            ]),
          )),
    );
  }
}
