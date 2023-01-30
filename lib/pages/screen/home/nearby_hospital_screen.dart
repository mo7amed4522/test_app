import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class NearbyHospitalScreen extends StatelessWidget {
  const NearbyHospitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Sizer(
      builder: (context, orientation, deviceType) => ListView(
        padding: EdgeInsets.only(right: 1.h, left: 1.h, top: 5.h),
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomIconBtn(
                icon: Icons.arrow_back,
                color: AppColor.back,
                onPressed: () {
                  Get.back();
                }),
            SizedBox(width: 10.w),
            TextWidgetShapeEnglish(
                text: "Nearby Hospital",
                size: 7.w,
                fontWeight: FontWeight.bold),
          ])
        ],
      ),
    ));
  }
}
