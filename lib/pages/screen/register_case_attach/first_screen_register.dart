// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/controller/register_case_controller.dart/register_case_first_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/home_widget/app_bar_widget.dart';
import 'package:test_app/pages/widget/home_widget/choice_button_widget.dart';

class RegisterCaseFirstPage extends StatelessWidget {
  
   const RegisterCaseFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Sizer(
            builder: (context, orientation, deviceType) => GetBuilder<
                    RegisterCaseFirstIMP>(
                init: RegisterCaseFirstIMP(),
                builder: (controller) => Container(
                  color: AppColor.backgroungRegister,
                        padding:
                            EdgeInsets.only(right: 1.h, left: 1.h, top: 5.h),
                        child: Column(
                          children: [
                          const AppBarWidgetRegisterCase(),
                          SizedBox(height: 5.h),
                          SvgPicture.asset(AppLinkImage.regiserCase,
                              height: 7.h, width: 7.w, fit: BoxFit.contain),
                              SizedBox(height: 3.h),
                          Center(
                              child: TextWidgetShapeEnglish(
                                  text: "Register Case",
                                  size: 5.w,
                                  color: AppColor.defaultColor,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 2.h),
                          Center(
                              child: TextWidgetShapeEnglish(
                                  text: "Please enter the following details to",
                                  size: 4.w,
                                  color:
                                      AppColor.grey)),
                          Center(
                              child: TextWidgetShapeEnglish(
                                  text: "register your case",
                                  size: 4.w,
                                  color:
                                      AppColor.grey)),
                          SizedBox(height: 7.h),
                          Center(
                              child: TextWidgetShapeEnglish(
                                  text: "Please select one of the following",
                                  size: 4.w,
                                  color: AppColor.black,
                                  fontWeight: FontWeight.normal)),
                          SizedBox(height: 3.h),
                          ChoiceButtonWidget(
                            onTap: (){
                              controller.changeInteractive();
                            },
                              text: "Interactive body",
                              color: controller.color,
                              colorText: controller.colorText),
                          //SizedBox(height: 0.5.h),
                          ChoiceButtonWidget(
                            onTap: (){
                              controller.changeInternal();
                            },
                              text: "Internal list",
                              color: controller.color2,
                              colorText: controller.colorText2),
                          SizedBox(height: Get.height/4),
                          Padding(
                            padding:  EdgeInsets.only(right: 4.h,left: 4.h),
                            child: GestureDetector(
                                onTap: () {
                                  controller
                                      .goToSecRegisterCasePage(controller.x);
                                },
                                child: animatedOptacity("Next")),
                          )
                        ]
                        ),
                        ))));
  }
}
