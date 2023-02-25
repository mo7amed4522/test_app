// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/register_case_controller.dart/register_case_first_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/home_widget/choice_button_widget.dart';

class RegiterCaseScreen extends StatelessWidget {
  const RegiterCaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroungRegister,
        appBar: AppBar(
          toolbarHeight: 80,
          title: TextWidgetShapeEnglish(
              text: "Register Case",
              size: 20,
              fontWeight: FontWeight.normal,
              color: AppColor.black),
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
        body: GetBuilder<RegisterCaseFirstIMP>(
            init: RegisterCaseFirstIMP(),
            builder: (controller) => Container(
                  color: AppColor.backgroungRegister,
                  padding: EdgeInsets.only(right: 1, left: 1, top: 5),
                  child: Column(children: [
                    SizedBox(height: 30),
                    SvgPicture.asset(AppLinkImage.regiserCase,
                        height: 100, fit: BoxFit.contain),
                    SizedBox(height: 3),
                    Center(
                        child: TextWidgetShapeEnglish(
                            text: "Register Case",
                            size: 25,
                            color: AppColor.defaultColor,
                            fontWeight: FontWeight.normal)),
                    SizedBox(height: 2),
                    Center(
                        child: TextWidgetShapeEnglish(
                            text: "Please enter the following details to",
                            size: 15,
                            color: AppColor.grey)),
                    Center(
                        child: TextWidgetShapeEnglish(
                            text: "register your case",
                            size: 15,
                            color: AppColor.grey)),
                    SizedBox(height: 7),
                    Center(
                        child: TextWidgetShapeEnglish(
                            text: "Please select one of the following",
                            size: 15,
                            color: AppColor.black,
                            fontWeight: FontWeight.normal)),
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
                      padding: EdgeInsets.only(
                          right: Get.width / 9, left: Get.width / 9),
                      child: GestureDetector(
                          onTap: () {
                            controller.goToSecRegisterCasePage(controller.x);
                          },
                          child: animatedOptacity("Next")),
                    ),
                    SizedBox(height: 20),
                  ]),
                )));
  }
}
