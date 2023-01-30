// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/controller/register_case_controller.dart/register_case_four_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/home_widget/app_bar_widget.dart';

class RegisterCaseFourScreen extends StatelessWidget {
  const RegisterCaseFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Sizer(
            builder: ((context, orientation, deviceType) => GetBuilder<
                    RegisterCaseFourControllerIMP>(
                init: RegisterCaseFourControllerIMP(),
                builder: (controller) => Container(
                    padding: EdgeInsets.only(left: 1.h, right: 1.h, top: 5.h),
                    child: Column(children: [
                      AppBarWidgetRegisterCase(),
                      SizedBox(height: 5.h),
                      Container(
                          width: Get.width,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.w)),
                          child: defaultTextForm(
                              maxLines: 10,
                              controller: controller.painController,
                              keyboardType: TextInputType.text,
                              label: "Type of Pain",
                              onTap: () {},
                              onChange: (String? vall) {},
                              onSubmit: (String? vall) {},
                              color: AppColor.back,
                              validate: (String? val) {})),
                      SizedBox(height: 3.h),
                      RadioListTile(
                        activeColor: AppColor.defaultColor,
                        title: TextWidgetShapeEnglish(text: "Yes", size: 15.sp),
                        value: "yes",
                        groupValue: controller.val,
                        onChanged: (v) {
                          controller.changeRadioButton(v);
                        },
                      ),
                      RadioListTile(
                        activeColor: AppColor.defaultColor,
                        title: TextWidgetShapeEnglish(text: "No", size: 15.sp),
                        value: "No",
                        groupValue: controller.val,
                        onChanged: (v) {
                          controller.changeRadioButton(v);
                        },
                      ),
                      const Spacer(),
                      GestureDetector(
                          onTap: () {}, child: animatedOptacity("Next")),
                      SizedBox(height: 2.h)
                    ]))))));
  }
}
