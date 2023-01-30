// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class DialogWidget extends StatelessWidget {void Function()? onTap;
   DialogWidget({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0.0,
      backgroundColor: AppColor.nearlyWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.sp)),
      child: SizedBox(
        height: 40.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppLinkImage.success, height: 20.h, width: 30.w),
            Center(
                child: TextWidgetShapeEnglish(
                    text: "SUCCESS",
                    size: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black)),
            Center(
                child: TextWidgetShapeEnglish(
                    text: "Your password has been reset",
                    size: 15.sp,
                    fontWeight: FontWeight.normal,
                    color: AppColor.grey)),
                   GestureDetector(
                                onTap: onTap,
                                child: animatedOptacity("BACK TO LOGIN"))
          ],
        ),
      ),
    );
  }
}