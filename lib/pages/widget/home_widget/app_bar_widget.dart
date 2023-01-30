import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class AppBarWidgetRegisterCase extends StatelessWidget {
  const AppBarWidgetRegisterCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      CustomIconBtn(
          icon: Icons.arrow_back,
          color: AppColor.back,
          onPressed: () {
            Get.back();
          }),
      SizedBox(width: 20.w),
      TextWidgetShapeEnglish(
          text: "Register Case",
          color: AppColor.back,
          size: 20,
          fontWeight: FontWeight.bold),
    ]);
  }
}
