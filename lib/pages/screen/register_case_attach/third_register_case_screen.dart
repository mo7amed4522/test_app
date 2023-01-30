// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/controller/register_case_controller.dart/register_case_third_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/home_widget/app_bar_widget.dart';
import 'package:test_app/pages/widget/home_widget/drop_mnue_widget.dart';

class RegisterCaseScreenThird extends StatelessWidget {
  const RegisterCaseScreenThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Sizer(
            builder: (context, orientation, deviceType) => GetBuilder<
                    RegisterCaseThirdControllerIMP>(
                init: RegisterCaseThirdControllerIMP(),
                builder: (controller) => Container(
                    padding: EdgeInsets.only(left: 1.h, right: 1.h, top: 5.h),
                    child: Column(children: [
                      const AppBarWidgetRegisterCase(),
                      SizedBox(height: 7.h),
                      Center(
                          child: TextWidgetShapeEnglish(
                              text: "Please select the part of Pain",
                              size: 5.w,
                              color: AppColor.back,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 3.h),
                      DropMnueWidget(),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            controller.goToFourthPage();
                          },
                          child: animatedOptacity("Next")),
                      SizedBox(height: 2.h)
                    ])))));
  }
}
