// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/controller/internal_controller/internal_first_page_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/home_widget/app_bar_widget.dart';
import 'package:test_app/pages/widget/home_widget/internal_drop_mune_widget.dart';

class InternalScreenFirst extends StatelessWidget {
  const  InternalScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Sizer(
            builder: (context, orientation, deviceType) => GetBuilder<
                    InternalFirstPageControllerIMP>(
                init: InternalFirstPageControllerIMP(),
                builder: (controller) => Container(
                  color: AppColor.backgroungRegister,
                    padding: EdgeInsets.only(left: 1.h, right: 1.h, top: 5.h),
                    child: Column(children: [
                      const AppBarWidgetRegisterCase(),
                      SizedBox(height: 7.h),
                      Center(
                          child: TextWidgetShapeEnglish(
                              text: "Please select the part of Pain",
                              size: 5.w,
                              color: AppColor.black,
                              fontWeight: FontWeight.normal)),
                      InternalDropMnueWidget(),
                      Spacer(),
                      Padding(
                        padding:  EdgeInsets.only(right: 3.h,left: 3.h),
                        child: GestureDetector(
                            onTap: () {
                              controller.goToFourthPage();
                            },
                            child: animatedOptacity("Next")),
                      ),
                      SizedBox(height: 3.h)
                    ])))));
  }
}
