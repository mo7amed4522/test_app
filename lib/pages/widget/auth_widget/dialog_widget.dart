// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class DialogWidget extends StatelessWidget {
  void Function()? onTap;
  DialogWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0.0,
      backgroundColor: AppColor.nearlyWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 10),
            SvgPicture.asset(AppLinkImage.success, height: 120, width: 100),
            SizedBox(height: 10),
            Center(
                child: TextWidgetShapeEnglish(
                    text: "SUCCESS",
                    size: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black)),
            Center(
                child: TextWidgetShapeEnglish(
                    text: "Your password has been reset",
                    size: 15,
                    fontWeight: FontWeight.normal,
                    color: AppColor.grey)),
            Padding(
              padding: const EdgeInsets.only(left: 7, right: 7),
              child: GestureDetector(
                  onTap: onTap, child: animatedOptacity("BACK TO LOGIN")),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
