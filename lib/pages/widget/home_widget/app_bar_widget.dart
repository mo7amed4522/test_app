// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';

class AppBarWidgetRegisterCase extends StatelessWidget {
  const AppBarWidgetRegisterCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        height: 5,
        decoration: BoxDecoration(
            color: AppColor.nearlyWhite,
            borderRadius: BorderRadius.circular(6)),
        child: CustomIconBtn(
            icon: Icons.arrow_back,
            color: AppColor.black,
            onPressed: () {
              Get.back();
            }),
      ),
      SizedBox(width: 23),
      Text(
          "Register Case",
          style: TextStyle(
            color: AppColor.black,
          fontSize: 20,
          fontWeight: FontWeight.normal
          ),
          ),
    ]);
  }
}
